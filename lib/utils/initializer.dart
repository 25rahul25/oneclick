import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_click/di/injection.dart';
import 'package:one_click/utils/logger.dart';

final _log = getLogger('Initializer');

class Initializer {
  static void init(VoidCallback runApp) {

    runZonedGuarded(() async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

      // await configureDependencies();
      _initScreenPreference();

      runApp();
    }, (error, stackTrace) {
      log('runZonedGuarded error', error: error, stackTrace: stackTrace);
    });
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
