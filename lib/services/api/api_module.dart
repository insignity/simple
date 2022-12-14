import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:simple/services/di/service_locator.dart';

import 'api.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Api getClient() => Api(
        Dio(
          BaseOptions(
            baseUrl: 'http://188.225.83.80:6719/api/v1',
          ),
        ),
        sessionService: sl(),
      );
}
