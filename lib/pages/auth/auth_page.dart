import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:simple/services/di/service_locator.dart';

import 'auth_store.dart';

part 'widgets/login.dart';

part 'widgets/register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<AuthStore>(
      create: (_) => sl(),
      child: Observer(builder: (context) {
        final store = sl<AuthStore>();
        return Login();
      }),
    );
  }
}
