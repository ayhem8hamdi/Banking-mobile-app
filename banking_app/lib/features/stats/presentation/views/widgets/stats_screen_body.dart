import 'package:banking_app/features/home/presentation/views/widgets/custom_background_stack.dart';
import 'package:flutter/material.dart';

class StatsScreenBody extends StatelessWidget {
  const StatsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundStack(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(slivers: [

          ],
        ),
      ),
    );
  }
}
