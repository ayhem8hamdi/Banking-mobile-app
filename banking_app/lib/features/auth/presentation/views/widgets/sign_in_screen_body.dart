import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_custom_app_bar.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_form_title.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          CustomAuthAppBar(),
          SliverGap(53),
          AuthFormTitle(text: "Sign In"),
          SliverGap(38),
          SliverToBoxAdapter(child: SignUpForm()),
          SliverGap(29),
          DontHaveAccountSection(),
        ],
      ),
    );
  }
}

class DontHaveAccountSection extends StatelessWidget {
  const DontHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("I’m a new user.", style: AppStyles.styleRegular14(context)),
          Text(" Sign In", style: AppStyles.styleMeduim14(context)),
        ],
      ),
    );
  }
}
