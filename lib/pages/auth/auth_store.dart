import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:simple/services/api/api.dart';
import 'package:simple/services/session/session_service.dart';
import 'package:simple/utils/runnable_store.dart';

part 'auth_store.g.dart';

enum AuthStep { login, register }

@injectable
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore extends RunnableStore with Store {
  final SessionService _sessionService;
  final Api _api;

  _AuthStore(this._sessionService, this._api);

  @readonly
  AuthStep _step = AuthStep.login;

  @computed
  bool get _isLoggedIn => _sessionService.accessToken != null;

  @action
  changeStep() {
    if (_step == AuthStep.login) {
      _step = AuthStep.register;
    } else {
      _step = AuthStep.login;
    }
  }

  @action
  Future login({required String email, required String password}) async {
    await _api.loginWithEmail(email: email, password: password);
  }

  @action
  Future register({
    required String email,
    required String phone,
    required String nickname,
    required String password,
  }) async {
    await _api.register(
      email: email,
      password: password,
      nickname: nickname,
      phone: phone,
    );
  }
}
