// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RestaurantsStore on _RestaurantsStore, Store {
  late final _$_restaurantsAtom =
      Atom(name: '_RestaurantsStore._restaurants', context: context);

  List<RestaurantModel> get restaurants {
    _$_restaurantsAtom.reportRead();
    return super._restaurants;
  }

  @override
  List<RestaurantModel> get _restaurants => restaurants;

  @override
  set _restaurants(List<RestaurantModel> value) {
    _$_restaurantsAtom.reportWrite(value, super._restaurants, () {
      super._restaurants = value;
    });
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
