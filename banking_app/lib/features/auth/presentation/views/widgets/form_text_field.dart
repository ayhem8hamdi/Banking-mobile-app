import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String iconAsset;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;

  const FormTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.iconAsset,
    this.validator,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      style: AppStyles.styleRegular14(
        context,
      ).copyWith(color: cs.onSurface, fontSize: 15),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular14(context).copyWith(fontSize: 13.6),
        prefixIcon: TextFieldPrefixIcon(icon: iconAsset),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        errorStyle: AppStyles.styleRegular14(
          context,
        ).copyWith(fontSize: 13.6, color: Colors.red),
      ),
    );
  }
}

class TextFieldPrefixIcon extends StatelessWidget {
  final String icon;
  const TextFieldPrefixIcon({super.key, required this.icon});

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
