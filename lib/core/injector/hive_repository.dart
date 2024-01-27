import 'package:hive/hive.dart';

class HiveRepository {
  static HiveRepository? _storageHive;
  static Box? _box;

  static Future<HiveRepository> getInctance() async {
    if(_storageHive == null) {
      final secureStorage = HiveRepository._();
      await secureStorage._init();
      _storageHive = secureStorage;
    }
    return _storageHive!;
  }
  HiveRepository._();

  Future _init() async {
    _box = await Hive.openBox("hiveRepo");
  }
  static bool getAuthStatusHive() {
    return _box?.get('isAuthenticatedHive') ?? false;
  }
  static Future<void> setAuthStatusHive(bool value) async {
     return await _box?.put('isAuthenticatedHive', value);
  }
}
