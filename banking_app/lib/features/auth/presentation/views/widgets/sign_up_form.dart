import 'package:banking_app/core/shared_widgets/app_button.dart';
import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();
      // TODO: call your login cubit/service here + extract Validators
      debugPrint("Logging in with $email / $password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const FormLabel(text: "Email Address"),
          FormTextField(
            hintText: "Email",
            controller: _emailController,
            iconAsset: ImageAssets.mail,
            keyboardType: TextInputType.emailAddress,
            validator: (value) =>
                (value == null || value.isEmpty) ? "Enter email" : null,
          ),
          const Gap(21),
          const FormLabel(text: "Password"),
          FormPasswordField(
            hintText: "password",
            controller: _passwordController,
            iconAsset: ImageAssets.passwordLock,
            validator: (value) =>
                (value == null || value.isEmpty) ? "Enter password" : null,
          ),
          const Gap(40),
          AppButton(text: "Sign In", onPressed: _onLoginPressed),
        ],
      ),
    );
  }
}

class FormLabel extends StatelessWidget {
  const FormLabel({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: AppStyles.styleRegular14(context)),
        const Gap(1),
      ],
    );
  }
}
