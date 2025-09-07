import 'dart:ui';
import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/features/home/presentation/views/widgets/card_widget.dart';
import 'package:banking_app/features/home/presentation/views/widgets/custom_background_stack.dart';
import 'package:banking_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundStack(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),
            SliverGap(32),
            CardWidget(),
            SliverGap(30),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeScreenCustomIcon(),
                  HomeScreenCustomIcon(),
                  HomeScreenCustomIcon(),
                  HomeScreenCustomIcon(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreenCustomIcon extends StatelessWidget {
  const HomeScreenCustomIcon({super.key});

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
          padding: const EdgeInsets.all(22),
          child: SvgPicture.asset(
            ImageAssets.toPupIcon,
            fit: BoxFit.contain,
            color: cs.onSurface, // stays sharp
          ),
        ),
      ),
    );
  }
}
