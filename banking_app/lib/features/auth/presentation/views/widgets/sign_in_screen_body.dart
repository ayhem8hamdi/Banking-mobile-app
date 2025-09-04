import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const CustomScrollView(
        slivers: [
          CustomAuthAppBar(),
          SliverGap(53),
          AuthFormTitle(text: "Sign In"),
        ],
      ),
    );
  }
}

class AuthFormTitle extends StatelessWidget {
  const AuthFormTitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(text, style: AppStyles.styleMeduim32(context)),
      ),
    );
  }
}
