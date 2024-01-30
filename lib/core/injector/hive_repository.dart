import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveRepository {
  static HiveRepository? _storageHive;
  static Box? _box;

  static Future<HiveRepository> getInctance() async {
    if(_storageHive == null) {
      final secureStorage = HiveRepository._();
      await secureStorage._initHive();
      _storageHive = secureStorage;
    }
    return _storageHive!;
  }
  HiveRepository._();

  Future<void> _initHive() async {
    const boxName = 'jahongir';
    Directory directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    _box = await Hive.openBox<dynamic>(boxName);
  }
  static bool getAuthStatusHive() {
    return _box?.get('isAuthenticatedHive') ?? false;
  }
  static Future<void> setAuthStatusHive(bool value) async {
     return await _box?.put('isAuthenticatedHive', value);
  }
}
