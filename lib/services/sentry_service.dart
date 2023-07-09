import 'package:app/env/env.dart';
import 'package:app/services/base_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class SentryService extends BaseService {
  static Future<void> initialize() async {
    await SentryFlutter.init(
      (options) {
        options.dsn = Env.sentryDsn;
      },
    );
  }
}
