import 'package:flutter/material.dart';
import 'package:simple/services/di/service_locator.dart' as di;
import 'package:simple/services/di/service_locator.dart';

import 'models/models.dart';
import 'services/api/api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    await login();
    await getAllRestaurants();
  }

  Future login() async {
    final response = await sl<Api>()
        .loginWithEmail(email: 'ayarsen@mail.ru', password: 'asdfasdf');
    print(response.user.email);
  }

  Future getAllRestaurants() async {
    final restaurants = await sl<Api>().getAllRestaurants();
    // final list = restaurantModelsFromListDynamic(listOfDynamic);
    print(restaurants.restaurants.first.title);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
