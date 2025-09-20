import 'package:banking_app/features/settings/presentation/widget/terms_and_conditions_screen_body.dart';
import 'package:flutter/material.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: TermsAndConditionsScreenBody());
  }
}
