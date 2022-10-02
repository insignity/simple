import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:simple/models/models.dart';
import 'package:simple/services/storage/storage_service.dart';
import 'package:simple/utils/interceptors/auth_interceptor.dart';
import 'package:simple/utils/typedefs.dart';

part 'api.g.dart';

@RestApi()
abstract class Api {
  factory Api(
    Dio dio, {
    required StorageService storageService,
    String? baseUrl,
  }) {
    return _Api(
        dio
          ..interceptors.addAll([
            AuthInterceptor(storageService),
          ]),
        baseUrl: baseUrl);
  }

  @POST("/auth/login")
  Future<UserData> loginWithEmail({
    @Field() required String email,
    @Field() required String password,
  });

  @GET("/restaurants/all")
  Future<RestaurantsData> getAllRestaurants({
    @Field() int page = 1,
    @Field() int perPage = 10,
  });
}
