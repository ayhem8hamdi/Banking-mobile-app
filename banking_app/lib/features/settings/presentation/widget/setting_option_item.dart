import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/settings/domain/settings_options_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingsOptionItem extends StatelessWidget {
  const SettingsOptionItem({super.key, required this.settingsOptionsModel});
  final SettingsOptionsModel settingsOptionsModel;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: settingsOptionsModel.onTap,
            child: Row(
              children: [
                Text(
                  settingsOptionsModel.settingOption,
                  style: AppStyles.styleMeduim14(
                    context,
                  ).copyWith(color: cs.onSurface),
                ),
                const Spacer(),
                Text(
                  settingsOptionsModel.language ?? "",
                  style: AppStyles.styleMeduim14(
                    context,
                  ).copyWith(color: const Color(0XFF7E848D)),
                ),
                const Gap(16),
                Transform.rotate(
                  angle: 3.1416,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: Color(0XFF7E848D),
                  ),
                ),
              ],
            ),
          ),
          const Gap(14),
          settingsOptionsModel.isLast == true
              ? const SizedBox.shrink()
              : Container(height: 1, color: cs.outline),
        ],
      ),
    );
  }
}
