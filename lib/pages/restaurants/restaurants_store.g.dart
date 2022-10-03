// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RestaurantsStore on _RestaurantsStore, Store {
  Computed<List<RestaurantModel>>? _$restaurantsComputed;

  @override
  List<RestaurantModel> get restaurants => (_$restaurantsComputed ??=
          Computed<List<RestaurantModel>>(() => super.restaurants,
              name: '_RestaurantsStore.restaurants'))
      .value;

  late final _$queryAtom =
      Atom(name: '_RestaurantsStore.query', context: context);

  @override
  String get query {
    _$queryAtom.reportRead();
    return super.query;
  }

  @override
  set query(String value) {
    _$queryAtom.reportWrite(value, super.query, () {
      super.query = value;
    });
  }

  late final _$_allRestaurantsAtom =
      Atom(name: '_RestaurantsStore._allRestaurants', context: context);

  @override
  List<RestaurantModel> get _allRestaurants {
    _$_allRestaurantsAtom.reportRead();
    return super._allRestaurants;
  }

  @override
  set _allRestaurants(List<RestaurantModel> value) {
    _$_allRestaurantsAtom.reportWrite(value, super._allRestaurants, () {
      super._allRestaurants = value;
    });
  }

  @override
  String toString() {
    return '''
query: ${query},
restaurants: ${restaurants}
    ''';
  }
}
