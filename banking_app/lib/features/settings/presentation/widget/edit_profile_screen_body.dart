import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/form_text_field.dart';
import 'package:banking_app/features/settings/presentation/widget/edit_prodile_user_data.dart';
import 'package:banking_app/features/settings/presentation/widget/edit_profile_screen_body.dart';
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
          EditableTextField(),
        ],
      ),
    );
  }
}

class EditableTextField extends StatelessWidget {
  const EditableTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: TextField(
        style: AppStyles.styleRegular14(
          context,
        ).copyWith(color: cs.onSurface, fontSize: 15),
        controller: TextEditingController(text: "ayhem hamdi"),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: "Update your name",
          hintStyle: AppStyles.styleRegular14(context).copyWith(fontSize: 13.6),
          prefixIcon: const TextFieldPrefixIcon(icon: ImageAssets.userProfile),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          errorStyle: AppStyles.styleRegular14(
            context,
          ).copyWith(fontSize: 13.6, color: Colors.red),
        ),
      ),
    );
  }
}
