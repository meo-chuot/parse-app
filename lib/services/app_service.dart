import 'dart:async';

import 'package:app/env/env.dart';
import 'package:app/services/base_service.dart';
import 'package:app/services/locator_service.dart';
import 'package:app/services/orientation_service.dart';
import 'package:app/services/sentry_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class AppService extends BaseService {
  static Future<void> initialize() async {
    await OrientationService.initialize();
    await LocatorService.initialize();

    await Parse().initialize(Env.apiAppId, Env.apiUri,
        clientKey: Env.apiAppKey, debug: true);
    await SentryService.initialize();
    GoogleFonts.config.allowRuntimeFetching = false;
  }
}
