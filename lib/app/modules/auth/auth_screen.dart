part of auth;

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Stack(
        children: [
          const GradientBackground(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: _buildItems(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItems(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      children: [
        const Icon(
          Icons.home,
          size: 200,
          // color: Colors.blueGrey,
        ),
        const SizedBox(height: kSpacing),
        Text(
          'Welcome',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: kSpacing / 2),
        const Text('Let\'s start now!', textAlign: TextAlign.center),
        const SizedBox(height: kSpacing * 5 / 2),
        AppButton(
          selected: true,
          label: 'Sign In',
          minimumSize: 60,
          paddingSymmetric: 200,
          onPressed: () {
            Get.toNamed(Routes.auth + Routes.login, arguments: controller);
          },
        ),
        const SizedBox(height: kSpacing),
        AppButton(
          selected: true,
          label: 'Sign Up',
          minimumSize: 60,
          paddingSymmetric: 200,
          onPressed: () {
            Get.toNamed(Routes.auth + Routes.register, arguments: controller);
          },
        ),
        const SizedBox(height: kSpacing),
        AppButton(
          selected: true,
          label: 'Login SSO',
          minimumSize: 60,
          paddingSymmetric: 200,
          onPressed: () {
            EasyLoading.show(status: 'loading...');
          },
        ),
      ],
    );
  }
}
