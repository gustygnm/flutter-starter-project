import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_project/core/di/injection.dart' as di;
import 'package:flutter_starter_project/core/env/env_config.dart';
import 'package:flutter_starter_project/core/env/flavor.dart';
import 'package:flutter_starter_project/presentation/app/app.dart';
import 'package:flutter_starter_project/presentation/app/app_bloc_observer.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/get_utils/src/platform/platform.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background,
  // such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  log('Handling a background message ${message.messageId}', name: 'FIREBASE');
}

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (details) {
        log(details.exceptionAsString(), stackTrace: details.stack);
      };
      FlavorSettings.development();
      await di.init();

      if (GetPlatform.isMobile || GetPlatform.isWeb) {
        await Firebase.initializeApp();

        /// Set the background messaging handler early on, as a named
        /// top-level function
        FirebaseMessaging.onBackgroundMessage(
            _firebaseMessagingBackgroundHandler);
      }

      Bloc.observer = AppBlocObserver();
      runApp(
        DevicePreview(
          builder: (context) => App(),
        ),
      );

      ///[console] flavor running
      if (!kReleaseMode) {
        final settings = EnvConfig.getInstance();
        log('🚀 APP FLAVOR NAME      : ${settings.flavorName}', name: 'ENV');
        log('🚀 APP API_BASE_URL     : ${settings.apiBaseUrl}', name: 'ENV');
        log('🚀 APP API_SENTRY       : ${settings.apiSentry}', name: 'ENV');
      }
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
