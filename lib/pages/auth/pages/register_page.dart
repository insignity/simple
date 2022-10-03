part of '../auth_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nicknameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController mailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final store = context.read<AuthStore>();

    bool passwordObscureText = true;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.$.Registration),
        leading: IconButton(
          onPressed: () => store.changeStep(),
          icon: SvgPicture.asset(
            AppIcons.back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 32),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nicknameController,
                  decoration: InputDecoration(
                    label: Text(context.$.Login),
                  ),
                ),
                const AppDivider(),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    label: Text(context.$.Phone),
                  ),
                ),
                const AppDivider(),
                TextFormField(
                  controller: mailController,
                  decoration: InputDecoration(
                    label: Text(context.$.Mail),
                  ),
                ),
                const AppDivider(),
                StatefulBuilder(builder: (context, setState) {
                  return TextFormField(
                    controller: passwordController,
                    obscureText: passwordObscureText,
                    decoration: InputDecoration(
                      label: Text(context.$.Password),
                      suffixIcon: IconButton(
                        icon: SvgPicture.asset(AppIcons.hide),
                        splashRadius: 1,
                        onPressed: () {
                          setState(() {
                            passwordObscureText = !passwordObscureText;
                          });
                        },
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Container(
            height: 64,
            margin: const EdgeInsets.only(bottom: 56),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            child: FutureButton(
              onPressed: () async {
                await
                store.register(
                  email: mailController.text,
                  phone: phoneController.text,
                  nickname: nicknameController.text,
                  password: passwordController.text,
                );
                context.router.navigate(const RootRoute());
              },
              child: Text(context.$.LoginOrMail),
            ),
          ),
        ],
      ),
    );
  }
}
