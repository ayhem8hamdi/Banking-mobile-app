import 'package:banking_app/features/home/presentation/views/widgets/custom_background_stack.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundStack(child: CustomScrollView(slivers: []));
  }
}
