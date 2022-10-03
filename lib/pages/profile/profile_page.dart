import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple/pages/profile/profile_store.dart';
import 'package:simple/routing/app_router.dart';
import 'package:simple/services/di/service_locator.dart';
import 'package:simple/services/session/session_service.dart';
import 'package:simple/widgets/future_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final store = sl<ProfileStore>();
    return Column(
      children: [
        Container(
          child: Text('profile'),
        ),
        FutureButton(
          onPressed: () async {
            store.logout();
            context.router.navigate(const RootRoute());
          },
          child: Text('logout'),
        )
      ],
    );
  }
}
