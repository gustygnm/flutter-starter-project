import 'package:dartz/dartz.dart';
import 'package:flutter_starter_project/core/error/failures.dart';
import 'package:flutter_starter_project/core/usecases/usecase.dart';
import 'package:flutter_starter_project/data/models/models.dart';
import 'package:flutter_starter_project/domain/entities/entities.dart';
import 'package:flutter_starter_project/domain/repositories/repository.dart';

class LoginUsecase extends UseCase<LoginEntity, LoginBody> {
  LoginUsecase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, LoginEntity>> call(LoginBody params) {
    return _repository.requestLogin(params);
  }
}
