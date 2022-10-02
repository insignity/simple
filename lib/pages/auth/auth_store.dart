import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:simple/services/api/api.dart';
import 'package:simple/services/storage/storage_service.dart';
import 'package:simple/utils/runnable_store.dart';

part 'auth_store.g.dart';

@injectable
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore extends RunnableStore with Store {
  final StorageService storageService;
  final Api api;

  _AuthStore(this.storageService, this.api);

  @computed
  bool get _isLoggedIn => storageService.accessToken != null;

  @action
  Future login() async {
    final response = await api.loginWithEmail(
        email: 'ayarsen@mail.ru', password: 'asdfasdf');
    print(response.user.email);
  }

  @action
  Future register() async {
    final response = await api.register(
        email: 'ayarsen1@mail.ru',
        password: 'asdfasdf',
        nickname: 'ayarsen1',
        phone: '799999999999');
    print(response.user.email);
  }
}
