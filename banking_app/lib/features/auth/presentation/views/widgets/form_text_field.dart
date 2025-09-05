import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return TextField(
      style: AppStyles.styleRegular14(
        context,
      ).copyWith(color: cs.onSurface, fontSize: 15),
      decoration: InputDecoration(
        prefixIcon: const TextFieldPrefixIcon(icon: ImageAssets.mail),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        hintText: 'Enter your full name',
        hintStyle: AppStyles.styleRegular14(context).copyWith(fontSize: 13.6),
      ),
    );
  }
}

class TextFieldPrefixIcon extends StatelessWidget {
  const TextFieldPrefixIcon({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 5),
        SvgPicture.asset(icon, fit: BoxFit.contain),
        const SizedBox(width: 16),
      ],
    );
  }
}
