import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:simple/models/models.dart';
import 'package:simple/services/api/api.dart';
import 'package:simple/services/favorite/favorite_service.dart';
import 'package:simple/utils/runnable_store.dart';

part 'restaurants_store.g.dart';

@injectable
class RestaurantsStore = _RestaurantsStore with _$RestaurantsStore;

abstract class _RestaurantsStore extends RunnableStore with Store {
  final Api _api;
  final FavoriteService _favoriteService;

  _RestaurantsStore(this._api, this._favoriteService) {
    _init();
  }

  @observable
  String query = "";

  @observable
  List<RestaurantModel> _allRestaurants = [];

  @computed
  List<RestaurantModel> get restaurants {
    List<RestaurantModel> foundRestaurants = [];
    for (final restaurant in _allRestaurants) {
      if (restaurant.title.contains(query)) {
        foundRestaurants.add(restaurant);
      }
    }
    return foundRestaurants;
  }

  @action
  Future<void> _init() async {
    await run(() async {
      final restaurantsData = await _api.getAllRestaurants();

      _allRestaurants = restaurantsData.restaurants;
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
