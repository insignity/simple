// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoritesStore on _FavoritesStore, Store {
  late final _$_favoritesAtom =
      Atom(name: '_FavoritesStore._favorites', context: context);

  List<RestaurantModel> get favorites {
    _$_favoritesAtom.reportRead();
    return super._favorites;
  }

  @override
  List<RestaurantModel> get _favorites => favorites;

  @override
  set _favorites(List<RestaurantModel> value) {
    _$_favoritesAtom.reportWrite(value, super._favorites, () {
      super._favorites = value;
    });
  }

  late final _$changeFavoriteAsyncAction =
      AsyncAction('_FavoritesStore.changeFavorite', context: context);

  @override
  Future<void> changeFavorite({required int id, required bool isFavorite}) {
    return _$changeFavoriteAsyncAction
        .run(() => super.changeFavorite(id: id, isFavorite: isFavorite));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
