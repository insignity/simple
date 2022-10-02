part of '../auth_page.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = context.read<AuthStore>();
    store.login();
    return Container();
  }
}
