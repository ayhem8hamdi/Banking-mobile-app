import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBackgroundStack extends StatelessWidget {
  const CustomBackgroundStack({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final media = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Container(
          color: cs.surface,
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 90),
              child: SvgPicture.asset(
                ImageAssets.backgroundBlurEffect,
                fit: BoxFit.cover,
                height: media.height * 0.37,
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
