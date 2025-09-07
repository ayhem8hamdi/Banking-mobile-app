import 'dart:ui';
import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/features/home/presentation/views/widgets/card_widget_body.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.2, sigmaY: 0.2),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageAssets.worldMapPng),
            ),
            color: const Color(0XFF25253D).withOpacity(0.75),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const CardBody(),
        ),
      ),
    );
  }
}
