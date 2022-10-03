import 'package:injectable/injectable.dart';
import 'package:simple/models/models.dart';
import 'package:simple/services/storage/storage_service.dart';
import 'package:mobx/mobx.dart';

part 'session_service.g.dart';

@lazySingleton
class SessionService = _SessionService with _$SessionService;

abstract class _SessionService with Store {
  final StorageService storageService;

  _SessionService(this.storageService) {
    _accessToken = storageService.accessToken;
    _refreshToken = storageService.refreshToken;
  }

  @readonly
  AccessToken? _accessToken;

  @readonly
  RefreshToken? _refreshToken;

  @computed
  bool get isLoggedIn => _accessToken != null;

  @action
  void updateAccessToken(AccessToken token) {
    storageService.accessToken = _accessToken = token;
  }

  @action
  void updateRefreshToken(RefreshToken token) {
    storageService.refreshToken = _refreshToken = token;
  }

  @action
  void clear() {
    storageService.accessToken = _accessToken = null;
    storageService.refreshToken = _refreshToken = null;
  }
}
