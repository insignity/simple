part of 'models.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String email;
  final String nickname;
  final String? phone;

  UserModel({
    required this.id,
    required this.email,
    required this.nickname,
    required this.phone,
  });

  factory UserModel.fromJson(Json json) =>
      _$UserModelFromJson(json);

  Json toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserData{
  final UserModel user;

  UserData(this.user);

  factory UserData.fromJson(Json json) => _$UserDataFromJson(json);

  Json toJson() => _$UserDataToJson(this);
}