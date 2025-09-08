import 'package:banking_app/features/stats/presentation/views/widgets/stats_screen_body.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: StatsScreenBody());
  }
}
