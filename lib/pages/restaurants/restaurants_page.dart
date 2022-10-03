import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:simple/pages/restaurants/widgets/restaurant_item.dart';
import 'package:simple/pages/restaurants/widgets/restaurant_search.dart';
import 'package:simple/services/di/service_locator.dart';

import 'restaurants_store.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    return Provider<RestaurantsStore>(
      create: (_) => sl(),
      child: GestureDetector(
        onTap: () => focusNode.unfocus(),
        child: SafeArea(
          child: Observer(
            builder: (context) {
              final store = context.read<RestaurantsStore>();
              if (store.isRunning) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (store.hasError) {
                return Text(store.error.toString());
              } else {
                return Column(
                  children: [
                    RestaurantSearch(focusNode: focusNode),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          final restaurant = store.restaurants[index];
                          return RestaurantItem(restaurant: restaurant);
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 20,
                          );
                        },
                        itemCount: store.restaurants.length,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
