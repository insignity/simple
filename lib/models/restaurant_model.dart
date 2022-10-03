part of 'models.dart';

@JsonSerializable()
class RestaurantModel {
  final int id;
  final bool isFavorite;
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

  factory RestaurantModel.fromJson(Json json) {
    return RestaurantModel(
      schedule: ScheduleModel.fromJson(json),
      coords: CoordsModel.fromJson(json),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Json))
          .toList(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Json),
      id: json['id'],
      isFavorite: json['is_favourite'] ?? false,
      title: json['title'] as String,
      description: json['description'] as String,
      scheduleId: json['scheduleId'] as int?,
      coordsId: json['coordsId'] as int?,
      userId: json['userId'] as int?,
    );
  }

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
