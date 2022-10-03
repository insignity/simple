part of 'models.dart';

@JsonSerializable()
class CoordsModel {
  final int id;
  final double? longitude;
  final double? latitude;
  final String? addressName;

  const CoordsModel({
    required this.id,
    required this.longitude,
    required this.latitude,
    required this.addressName,
  });

  factory CoordsModel.fromJson(Json json) =>
      _$CoordsModelFromJson(json);

  Json toJson() => _$CoordsModelToJson(this);
}
