part of auth;

class RegisterScreen extends StatelessWidget {
  final AuthController controller = Get.arguments;
   RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GradientBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CommonWidget.appBar(
            context,
            'Sign Up',
            Icons.arrow_back,
            Colors.white,
          ),
          body: Container(
            margin: const EdgeInsets.all(200),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: _buildForms(context),
          ),
        ),
      ],
    );
  }

  Widget _buildForms(BuildContext context) {
    return Form(
      key: controller.registerFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputField(
              controller: controller.registerEmailController,
              keyboardType: TextInputType.text,
              labelText: 'Email address',
              placeholder: 'Enter Email Address',
              validator: (value) {
                if (!ValidatorMixin.isEmail(value!)) {
                  return 'Email format error.';
                }

                if (value.isEmpty) {
                  return 'Email is required.';
                }
                return null;
              },
            ),
            CommonWidget.rowHeight(),
            InputField(
              controller: controller.registerPasswordController,
              keyboardType: TextInputType.emailAddress,
              labelText: 'Password',
              placeholder: 'Enter Password',
              password: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required.';
                }

                if (value.length < 6 || value.length > 15) {
                  return 'Password should be 6~15 characters';
                }

                return null;
              },
            ),
            CommonWidget.rowHeight(),
            InputField(
              controller: controller.registerConfirmPasswordController,
              keyboardType: TextInputType.emailAddress,
              labelText: 'Confirm Password',
              placeholder: 'Enter Password',
              password: true,
              validator: (value) {
                if (controller.registerPasswordController.text != controller.registerConfirmPasswordController.text) {
                  return 'Confirm Password is not consistence with Password.';
                }

                if (value!.isEmpty) {
                  return 'Confirm Password is required.';
                }
                return null;
              },
            ),
            CommonWidget.rowHeight(height: 10.0),
            AppCheckbox(
              label: 'I have read and agreed to the Terms & Conditions and Privay Policy of Demo.',
              checked: controller.registerTermsChecked,
              onChecked: (val) {
                controller.registerTermsChecked = val!;
              },
            ),
            CommonWidget.rowHeight(height: 80),
            AppButton(
              selected: true,
              label: 'Sign Up',
              minimumSize: 60,
              onPressed: () {
                controller.register(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
