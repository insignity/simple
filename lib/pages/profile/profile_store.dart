import 'package:injectable/injectable.dart';
import 'package:simple/services/session/session_service.dart';
import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

@injectable
class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store {
  final SessionService sessionService;

  _ProfileStore(this.sessionService);

  @action
  logout() => sessionService.clear();
}
