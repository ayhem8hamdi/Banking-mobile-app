import 'package:banking_app/features/auth/presentation/views/widgets/sign_in_screen_body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SignInScreenBody()));
  }
}
