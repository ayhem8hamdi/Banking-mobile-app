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
          SliverToBoxAdapter(child: Text("Sign Up")),
        ],
      ),
    );
  }
}
