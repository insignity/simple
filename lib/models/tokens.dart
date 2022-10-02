part of 'models.dart';

@JsonSerializable()
class RefreshToken{
  final String refreshToken;

  RefreshToken({required this.refreshToken});

  factory RefreshToken.fromJson(Json json) => _$RefreshTokenFromJson(json);

  Json toJson() => _$RefreshTokenToJson(this);
}


@JsonSerializable()
class AccessToken{
  final String accessToken;

  AccessToken({required this.accessToken});

  factory AccessToken.fromJson(Json json) => _$AccessTokenFromJson(json);

  Json toJson() => _$AccessTokenToJson(this);
}
