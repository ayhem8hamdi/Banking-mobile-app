import 'package:banking_app/features/my_cards/presentation/views/widgets/my_cards_screen_body.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: MyCardsScreenBody());
  }
}
