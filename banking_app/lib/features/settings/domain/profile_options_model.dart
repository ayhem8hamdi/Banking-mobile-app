class ProfileOptionsModel {
  final String icon, title;
  final bool? isNotif;

  final bool? isLast;
  final void Function()? onTap;

  ProfileOptionsModel({
    required this.icon,
    required this.title,
    this.onTap,
    this.isNotif = false,
    this.isLast = false,
  });
}
