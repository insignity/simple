import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple/l10n/l10n.dart';
import 'package:simple/services/di/service_locator.dart' as di;
import 'package:simple/services/di/service_locator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'models/models.dart';
import 'pages/auth/auth_page.dart';
import 'services/api/api.dart';
import 'theming/app_theme.dart';

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
  Future getAllRestaurants() async {
    final restaurants = await sl<Api>().getAllRestaurants();
    print(restaurants.restaurants.first.title);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ru', 'RU')],
      home: AuthPage(),
    );
  }
}
