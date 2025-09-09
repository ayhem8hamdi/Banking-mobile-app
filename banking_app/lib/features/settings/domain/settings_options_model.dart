class SettingsOptionsModel {
  const SettingsOptionsModel({
    required this.settingOption,
    this.language,
    this.isLast = false,
  });
  final String settingOption;
  final String? language;
  final bool? isLast;
}
