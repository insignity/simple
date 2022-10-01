import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:simple/models/user_model.dart';
import 'package:simple/utils/interceptors/auth_interceptor.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(Dio dio, {String? baseUrl}) {
    return _Api(
        dio
          ..interceptors.addAll([
            AuthInterceptor(),
          ]),
        baseUrl: baseUrl);
  }

  @POST("/auth/login")
  Future<UserModel> loginWithEmail({
    @Field() required String email,
    @Field() required String password,
  });
}
