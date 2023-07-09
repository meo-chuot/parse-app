import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  //The ofuscate flag lets you make your variables more
  // secure through obfuscation
  @EnviedField(varName: 'APP_NAME', obfuscate: true)
  // ignore: avoid_dynamic_calls
  static final String appName = _Env.appName;

  @EnviedField(varName: 'SENTRY_DSN', obfuscate: true)
  // ignore: avoid_dynamic_calls
  static final String sentryDsn = _Env.sentryDsn;

  @EnviedField(varName: 'API_URI', obfuscate: true)
  // ignore: avoid_dynamic_calls
  static final String apiUri = _Env.apiUri;

  @EnviedField(varName: 'API_APP_ID', obfuscate: true)
  // ignore: avoid_dynamic_calls
  static final String apiAppId = _Env.apiAppId;

  @EnviedField(varName: 'API_APP_KEY', obfuscate: true)
  // ignore: avoid_dynamic_calls
  static final String apiAppKey = _Env.apiAppKey;
}
