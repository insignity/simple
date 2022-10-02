part of '../auth_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController loginController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final store = context.read<AuthStore>();
    return Scaffold(
      appBar: AppBar(title: Text(context.$.Authorization)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: loginController,
                  decoration: InputDecoration(
                    label: Text(context.$.LoginOrMail),
                  ),
                ),
                const AppDivider(),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    label: Text(context.$.Password),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Container(
            height: 64,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                store.login(
                  email: loginController.text,
                  password: passwordController.text,
                );
              },
              child: Text(context.$.LoginOrMail),
            ),
          ),
          const SizedBox(height: 19),
          Container(
            height: 64,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                store.changeStep();
              },
              child: Text(context.$.Register),
            ),
          ),
        ],
      ),
    );
  }
}
