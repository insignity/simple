part of 'models.dart';

@JsonSerializable()
class ScheduleModel {
  final int id;
  final String opening;
  final String closing;

  const ScheduleModel({
    required this.id,
    required this.opening,
    required this.closing,
  });


  factory ScheduleModel.fromJson(Json json) =>
      _$ScheduleModelFromJson(json);

  Json toJson() => _$ScheduleModelToJson(this);
}
