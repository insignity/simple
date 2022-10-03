import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:simple/routing/app_router.dart';
import 'package:simple/services/di/service_locator.dart';
import 'package:simple/services/session/session_service.dart';
import 'package:simple/theming/app_icons.dart';
import 'package:simple/utils/extensions/context_shortcuts.dart';
import 'package:simple/widgets/future_button.dart';

import 'auth_store.dart';

part 'pages/login_page.dart';

part 'pages/register_page.dart';

part 'widgets/divider.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<AuthStore>(
      create: (_) => sl(),
      child: Observer(builder: (context) {
        final store = context.read<AuthStore>();
        if (store.step == AuthStep.login) {
          return const LoginPage();
        } else {
          return const RegisterPage();
        }
      }),
    );
  }
}
