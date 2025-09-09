class ProfileOptionsModel {
  final String icon, title;
  final bool? isNotif;

  ProfileOptionsModel({
    required this.icon,
    required this.title,
    this.isNotif = false,
  });
}
