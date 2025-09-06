import 'package:banking_app/features/auth/presentation/views/widgets/already_have_account.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_custom_app_bar.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_form_title.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          CustomAuthAppBar(),
          SliverGap(53),
          AuthFormTitle(text: "Sign Up"),
          SliverGap(38),
          SignUpForm(isSignUp: true),
          SliverGap(29),
          AlreadyHaveAccountSection(),
        ],
      ),
    );
  }
}
