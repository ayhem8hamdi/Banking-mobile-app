import 'dart:ui';

import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenCustomIcon extends StatelessWidget {
  const HomeScreenCustomIcon({
    super.key,
    required this.icon,
    this.padding = 23,
  });
  final String icon;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
        child: Container(
          decoration: BoxDecoration(
            color: cs.tertiary.withOpacity(0.75),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(
            icon == ImageAssets.loanIcon || icon == ImageAssets.toPupIcon
                ? 19
                : padding!,
          ),
          child: SvgPicture.asset(
            icon,
            fit: BoxFit.contain,
            color: cs.onSurface, // stays sharp
          ),
        ),
      ),
    );
  }
}
