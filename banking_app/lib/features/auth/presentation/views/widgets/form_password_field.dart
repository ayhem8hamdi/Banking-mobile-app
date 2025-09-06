import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/form_text_field.dart';
import 'package:flutter/material.dart';

class FormPasswordField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final String iconAsset;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;

  const FormPasswordField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.iconAsset,
    this.validator,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<FormPasswordField> createState() => _FormPasswordFieldState();
}

class _FormPasswordFieldState extends State<FormPasswordField> {
  bool showPassword = false;
  void _updatePasswordState() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: showPassword == true ? false : true,
      keyboardType: widget.keyboardType,
      style: AppStyles.styleRegular14(
        context,
      ).copyWith(color: cs.onSurface, fontSize: 15),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppStyles.styleRegular14(context).copyWith(fontSize: 13.6),
        prefixIcon: TextFieldPrefixIcon(icon: widget.iconAsset),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: GestureDetector(
          onTap: _updatePasswordState,
          child: Icon(
            showPassword == true
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: cs.secondary,
          ),
        ),
        errorStyle: AppStyles.styleRegular14(
          context,
        ).copyWith(fontSize: 13.6, color: Colors.red),
      ),
    );
  }
}
