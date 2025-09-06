import 'package:banking_app/core/shared_widgets/app_button.dart';
import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/form_password_field.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/form_text_field.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key, this.isSignUp = false});
  final bool? isSignUp;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _onSignUpPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();
      final name = _nameController.text.trim();
      final phone = _phoneNumberController.text.trim();
      // TODO: call your login cubit/service here + extract Validators
      debugPrint("Logging in with $email / $password / $name / $phone");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const FormLabel(text: "Full Name"),
            FormTextField(
              hintText: "Full Name",
              controller: _nameController,
              iconAsset: ImageAssets.mail,
              keyboardType: TextInputType.text,
              validator: (value) =>
                  (value == null || value.isEmpty) ? "Enter name" : null,
            ),
            const Gap(21),
            const FormLabel(text: "Phone Number"),
            FormTextField(
              hintText: "Phone Number",
              controller: _phoneNumberController,
              iconAsset: ImageAssets.phone,
              keyboardType: TextInputType.number,
              validator: (value) =>
                  (value == null || value.isEmpty) ? "Enter number" : null,
            ),
            const Gap(21),
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
            AppButton(
              text: widget.isSignUp == false ? "Sign In" : "Sign Up",
              onPressed: _onSignUpPressed,
            ),
          ],
        ),
      ),
    );
  }
}
