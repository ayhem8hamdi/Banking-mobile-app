import 'package:banking_app/features/settings/presentation/widget/edit_profile_screen_body.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: EditProfileScreenBody()));
  }
}
