import 'package:app/services/base_service.dart';
import 'package:flutter/services.dart';

class OrientationService extends BaseService {
  static Future<void> initialize() async {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
}
