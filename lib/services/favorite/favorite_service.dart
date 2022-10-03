import 'package:injectable/injectable.dart';
import 'package:simple/services/api/api.dart';
import 'package:mobx/mobx.dart';

part 'favorite_service.g.dart';

@lazySingleton
class FavoriteService = _FavoriteService with _$FavoriteService;

abstract class _FavoriteService with Store {
  final Api _api;

  _FavoriteService(this._api);

  @action
  Future<void> addFavorite(int id) async {
    return _api.addFavorite(id: id);
  }

  @action
  Future<void> removeFavorite(int id) async {
    return _api.removeFavorite(id: id);
  }
}
