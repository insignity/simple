import 'package:dio/dio.dart';
import 'package:simple/models/models.dart';
import 'package:simple/services/di/service_locator.dart';
import 'package:simple/services/session/session_service.dart';
import 'package:simple/services/storage/storage_service.dart';

class AuthInterceptor extends Interceptor {
  final SessionService sessionService;

  AuthInterceptor(this.sessionService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (sessionService.isLoggedIn) {
      options.headers.addAll(
        {"Authorization": "Bearer ${sessionService.accessToken!.accessToken}"},
      );
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data != null && response.data['tokens'] != null) {
      final tokens = response.data['tokens'];
      sessionService.updateAccessToken(AccessToken.fromJson(tokens));
      sessionService.updateRefreshToken(RefreshToken.fromJson(tokens));
    }
    print(response.data);
    super.onResponse(response, handler);
  }
}
