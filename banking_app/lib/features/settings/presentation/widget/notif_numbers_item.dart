import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class NotificationsNumberItem extends StatelessWidget {
  const NotificationsNumberItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2.5),
      decoration: const BoxDecoration(
        color: Color(0XFFEB0A24),
        shape: BoxShape.circle,
      ),
      child: Text("2", style: AppStyles.styleRegular11(context)),
    );
  }
}
