part of 'models.dart';

@JsonSerializable()
class ImageModel {
  final int id;
  final String url;
  final int restaurantId;

  const ImageModel({
    required this.id,
    required this.url,
    required this.restaurantId,
  });

  factory ImageModel.fromJson(Json json) =>
      _$ImageModelFromJson(json);

  Json toJson() => _$ImageModelToJson(this);
}
