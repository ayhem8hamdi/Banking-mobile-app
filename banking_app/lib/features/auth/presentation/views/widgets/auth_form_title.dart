import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

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
