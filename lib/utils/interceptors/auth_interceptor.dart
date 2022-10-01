import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("on request ${options.baseUrl + options.path}");
    print("response ${options.data}");
    print("response ${options.queryParameters}");
    print("response ${options.extra}");
    print("response ${options.headers}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("response ${response.data}");
    super.onResponse(response, handler);
  }
}
