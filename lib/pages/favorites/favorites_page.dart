import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:simple/widgets/restaurant_item.dart';
import 'package:simple/services/di/service_locator.dart';

import 'favorites_store.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<FavoritesStore>(
      create: (_) => sl(),
      child: SafeArea(
        child: Observer(
          builder: (context) {
            final store = context.read<FavoritesStore>();
            if (store.isRunning) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (store.hasError) {
              return Text(store.error.toString());
            } else {
              return ListView.separated(
                itemBuilder: (context, index) {
                  final restaurant = store.favorites[index];
                  return RestaurantItem(
                    restaurant: restaurant,
                    onTapIcon: () => store.changeFavorite(
                      id: restaurant.id,
                      isFavorite: restaurant.isFavorite,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: store.favorites.length,
              );
            }
          },
        ),
      ),
    );
  }
}
