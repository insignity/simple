import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:simple/models/models.dart';
import 'package:simple/services/api/api.dart';
import 'package:simple/services/favorite/favorite_service.dart';
import 'package:simple/utils/runnable_store.dart';

part 'favorites_store.g.dart';

@injectable
class FavoritesStore = _FavoritesStore with _$FavoritesStore;

abstract class _FavoritesStore extends RunnableStore with Store{

  final Api _api;

  final FavoriteService _favoriteService;

  _FavoritesStore(this._api, this._favoriteService) {
    _init();
  }

  @readonly
  List<RestaurantModel> _favorites = [];

  Future<void> _init() async {
    await run(() async {
      final favoritesData = await _api.getAllFavorites();

      _favorites = favoritesData.restaurants;
    });
  }

  @action
  Future<void> changeFavorite({
    required int id,
    required bool isFavorite,
  }) async {
    await run(() async {
      if (isFavorite) {
        await _favoriteService.removeFavorite(id);
      } else {
        await _favoriteService.addFavorite(id);
      }
      await _init();
    });
  }
}
