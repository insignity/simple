part of 'models.dart';

@JsonSerializable()
class RestaurantModel {
  final int id;
  final bool? isFavorite;
  final String title;
  final String description;
  final int? scheduleId;
  final int? coordsId;
  final int? userId;
  final ScheduleModel? schedule;
  final CoordsModel? coords;
  final List<ImageModel>? images;
  final UserModel? user;

  const RestaurantModel({
    required this.schedule,
    required this.coords,
    required this.images,
    required this.user,
    required this.id,
    required this.isFavorite,
    required this.title,
    required this.description,
    required this.scheduleId,
    required this.coordsId,
    required this.userId,
  });

  factory RestaurantModel.fromJson(Json json) =>
      _$RestaurantModelFromJson(json);

  Json toJson() => _$RestaurantModelToJson(this);
}

@JsonSerializable()
class RestaurantsData {
  final List<RestaurantModel> restaurants;

  RestaurantsData({required this.restaurants});

  factory RestaurantsData.fromJson(Json json) =>
      _$RestaurantsDataFromJson(json);

  Json toJson() => _$RestaurantsDataToJson(this);
}
