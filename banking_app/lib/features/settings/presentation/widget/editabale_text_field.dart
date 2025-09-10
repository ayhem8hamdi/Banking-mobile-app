import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/form_text_field.dart';
import 'package:banking_app/features/settings/domain/user_model.dart';
import 'package:flutter/material.dart';

class EditableTextField extends StatelessWidget {
  const EditableTextField({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return TextField(
      style: AppStyles.styleRegular14(
        context,
      ).copyWith(color: cs.onSurface, fontSize: 15),
      controller: TextEditingController(text: userModel.fieldData),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: userModel.hintText,
        hintStyle: AppStyles.styleRegular14(context).copyWith(fontSize: 13.6),
        prefixIcon: TextFieldPrefixIcon(icon: userModel.icon),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        errorStyle: AppStyles.styleRegular14(
          context,
        ).copyWith(fontSize: 13.6, color: Colors.red),
      ),
    );
  }
}
