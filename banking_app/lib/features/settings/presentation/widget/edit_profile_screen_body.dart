import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/settings/domain/user_model.dart';
import 'package:banking_app/features/settings/presentation/widget/edit_prodile_user_data.dart';
import 'package:banking_app/features/settings/presentation/widget/editabale_text_field.dart';
import 'package:banking_app/features/stats/presentation/views/widgets/stats_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditProfileScreenBody extends StatelessWidget {
  const EditProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          StatsCustomAppBar(
            text: "Edit Profile",
            leftIcon: Icons.arrow_back_ios_new,
          ),
          SliverGap(32),
          EditProfileUserData(),
          SliverGap(30),
        ],
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
        const Gap(5),
        EditableTextField(userModel: userModel),
      ],
    );
  }
}
