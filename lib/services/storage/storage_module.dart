
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'storage_service.dart';

@module
abstract class StorageModule {
  @preResolve
  @singleton
  Future<StorageService> instance() async {
    await Hive.initFlutter();
    return StorageService(await Hive.openBox('storage'));
  }
}