import 'package:flutter/material.dart';
import 'package:simple/services/di/service_locator.dart' as di;
import 'package:simple/services/di/service_locator.dart';

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
    sl<Api>().loginWithEmail(email: 'ayarsen@mail.ru', password: 'asdfasdf');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      ),
    );
  }
}
