import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/settings/domain/profile_options_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProfileOptionsItem extends StatelessWidget {
  const ProfileOptionsItem({super.key, required this.profileOptionsModel});
  final ProfileOptionsModel profileOptionsModel;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              SvgPicture.asset(profileOptionsModel.icon),
              const Gap(16),
              Text(
                profileOptionsModel.title,
                style: AppStyles.styleRegular14(
                  context,
                ).copyWith(color: cs.onSurface),
              ),
              const Spacer(),
              profileOptionsModel.isNotif == true
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2.5,
                      ),
                      child: Text(
                        "2",
                        style: AppStyles.styleRegular11(context),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0XFFEB0A24),
                        shape: BoxShape.circle,
                      ),
                    )
                  : Transform.rotate(
                      angle: 3.1416,
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 20,
                        color: Color(0XFF7E848D),
                      ),
                    ),
            ],
          ),
          const Gap(14),
          profileOptionsModel.isLast == true
              ? const SizedBox.shrink()
              : Container(height: 1, color: cs.outline),
        ],
      ),
    );
  }
}
