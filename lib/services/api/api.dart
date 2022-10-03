import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:simple/models/models.dart';
import 'package:simple/services/session/session_service.dart';
import 'package:simple/services/storage/storage_service.dart';
import 'package:simple/utils/interceptors/auth_interceptor.dart';
import 'package:simple/utils/typedefs.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(
    Dio dio, {
    required SessionService sessionService,
    String? baseUrl,
  }) {
    return _Api(
        dio
          ..interceptors.addAll([
            AuthInterceptor(sessionService),
          ]),
        baseUrl: baseUrl);
  }

  @POST("/auth/login")
  Future<UserData> loginWithEmail({
    @Field() required String email,
    @Field() required String password,
  });

 @POST("/auth/registration/customer/new")
  Future<UserData> register({
    @Field() required String email,
    @Field() required String nickname,
    @Field() required String phone,
    @Field() required String password,
  });

  @GET("/restaurants/all")
  Future<RestaurantsData> getAllRestaurants({
    @Field() int page = 1,
    @Field() int perPage = 10,
  });
}
