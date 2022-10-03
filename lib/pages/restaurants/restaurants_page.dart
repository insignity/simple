import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple/pages/auth/auth_page.dart';
import 'package:simple/services/di/service_locator.dart';

import 'restaurants_store.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = sl<RestaurantsStore>();
    return Observer(
      builder: (context) {
        if (store.isRunning) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (store.hasError) {
          return Text(store.error.toString());
        } else {
          return ListView.separated(
              itemBuilder: (context, index) {
                final restaurant = store.restaurants[index];
                return ListTile(title: Text(restaurant.title));
              },
              separatorBuilder: (context, index) {
                return const AppDivider();
              },
              itemCount: store.restaurants.length);
        }
      },
    );
  }
}
