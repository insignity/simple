// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'phone': instance.phone,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'user': instance.user,
    };

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) => RefreshToken(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) => AccessToken(
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
    };

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) =>
    RestaurantModel(
      schedule: json['schedule'] == null
          ? null
          : ScheduleModel.fromJson(json['schedule'] as Map<String, dynamic>),
      coords: json['coords'] == null
          ? null
          : CoordsModel.fromJson(json['coords'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      id: json['id'] as int,
      isFavorite: json['isFavorite'] as bool?,
      title: json['title'] as String,
      description: json['description'] as String,
      scheduleId: json['scheduleId'] as int?,
      coordsId: json['coordsId'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$RestaurantModelToJson(RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isFavorite': instance.isFavorite,
      'title': instance.title,
      'description': instance.description,
      'scheduleId': instance.scheduleId,
      'coordsId': instance.coordsId,
      'userId': instance.userId,
      'schedule': instance.schedule,
      'coords': instance.coords,
      'images': instance.images,
      'user': instance.user,
    };

RestaurantsData _$RestaurantsDataFromJson(Map<String, dynamic> json) =>
    RestaurantsData(
      restaurants: (json['restaurants'] as List<dynamic>)
          .map((e) => RestaurantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantsDataToJson(RestaurantsData instance) =>
    <String, dynamic>{
      'restaurants': instance.restaurants,
    };

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      id: json['id'] as int,
      url: json['url'] as String,
      restaurantId: json['restaurantId'] as int,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'restaurantId': instance.restaurantId,
    };

CoordsModel _$CoordsModelFromJson(Map<String, dynamic> json) => CoordsModel(
      id: json['id'] as int,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      addressName: json['addressName'] as String?,
    );

Map<String, dynamic> _$CoordsModelToJson(CoordsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'addressName': instance.addressName,
    };

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) =>
    ScheduleModel(
      id: json['id'] as int,
      opening: json['opening'] as String,
      closing: json['closing'] as String,
    );

Map<String, dynamic> _$ScheduleModelToJson(ScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'opening': instance.opening,
      'closing': instance.closing,
    };
