class ProfileOptionsModel {
  final String icon, title;
  final bool? isNotif;
  final bool? isLast;

  ProfileOptionsModel({
    required this.icon,
    required this.title,
    this.isNotif = false,
    this.isLast = false,
  });
}
