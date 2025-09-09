import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class SettingsTitles extends StatelessWidget {
  const SettingsTitles({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Text(text, style: AppStyles.styleRegular14(context)),
      ),
    );
  }
}
