import 'package:dio/dio.dart';
import 'package:simple/models/models.dart';
import 'package:simple/services/di/service_locator.dart';
import 'package:simple/services/storage/storage_service.dart';

class AuthInterceptor extends Interceptor {
  final StorageService storageService;

  AuthInterceptor(this.storageService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (storageService.accessToken != null) {
      options.headers.addAll(
        {"Authorization": "Bearer ${storageService.accessToken!.accessToken}"},
      );
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data != null && response.data['tokens'] != null) {
      final tokens = response.data['tokens'];
      storageService.accessToken = AccessToken.fromJson(tokens);
      storageService.refreshToken = RefreshToken.fromJson(tokens);
    }
    print(response.data);
    super.onResponse(response, handler);
  }
}
