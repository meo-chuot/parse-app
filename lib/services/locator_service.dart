import 'package:app/data/repository/repository.dart';
import 'package:app/services/base_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class LocatorService extends BaseService {
  static Future<void> initialize() async {
    getIt.registerSingleton(() => Repository(""));
  }
}
