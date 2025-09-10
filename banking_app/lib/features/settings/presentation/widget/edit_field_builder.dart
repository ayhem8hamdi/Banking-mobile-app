import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/settings/domain/user_model.dart';
import 'package:banking_app/features/settings/presentation/widget/editabale_text_field.dart';
import 'package:flutter/material.dart';

class EditProfileEditFieldsBuilder extends StatelessWidget {
  const EditProfileEditFieldsBuilder({super.key});
  static final List<UserModel> list = [
    const UserModel(
      "Update your Name",
      "Full Name",
      ImageAssets.userProfile,
      fieldData: "Tanya Myroniuk",
    ),
    const UserModel(
      "Update your Email Adress",
      "Email Adress",
      ImageAssets.mail,
      fieldData: "tanyamyroniuk77@gmail.com",
    ),
    const UserModel(
      "Update your Phone Number",
      "Phone Number",
      ImageAssets.phone,
      fieldData: "+8801712663389",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 21),
            child: EditFieldItem(userModel: list[index]),
          ),
        ),
      ),
    );
  }
}

class EditFieldItem extends StatelessWidget {
  const EditFieldItem({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(userModel.fieldTitle, style: AppStyles.styleRegular14(context)),
        EditableTextField(userModel: userModel),
      ],
    );
  }
}
