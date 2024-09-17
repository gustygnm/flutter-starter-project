import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_starter_project/core/error/failures.dart';
import 'package:flutter_starter_project/data/datasources/auth_local_data_source.dart';
import 'package:flutter_starter_project/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_starter_project/data/models/models.dart';
import 'package:flutter_starter_project/domain/entities/entities.dart';
import 'package:flutter_starter_project/domain/repositories/repository.dart';

const errorMsg = 'Something went wrong';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.remoteDataSource, this.localDataSource);

  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  @override
  Future<Either<Failure, LoginEntity>> requestLogin(LoginBody body) async {
    try {
      final remoteLogin = await remoteDataSource.requestLogin(body);
      await localDataSource.saveToken(remoteLogin.data.token);
      return Right(remoteLogin);
    } on DioException catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        log('${e.response!.data}');
        log('${e.response!.headers}');
        return Left(ServerFailure(e.response!.data['message'].toString()));
      } else {
        // Something happened in setting up or sending the request
        //that triggered an Error
        log(e.message.toString());
        return const Left(ServerFailure(errorMsg));
      }
    }
  }
}
