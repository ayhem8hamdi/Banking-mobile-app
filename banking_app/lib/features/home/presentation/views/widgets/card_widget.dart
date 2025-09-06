import 'dart:ui';

import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(ImageAssets.cardLeftIcon),
              const Gap(26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("4562", style: AppStyles.styleRegular24(context)),
                  Text("1122", style: AppStyles.styleRegular24(context)),
                  Text("4595", style: AppStyles.styleRegular24(context)),
                  Text("7852", style: AppStyles.styleRegular24(context)),
                ],
              ),
              const Gap(12),
              Text("AR Jonson", style: AppStyles.styleRegular13(context)),
              const Gap(12),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry Date",
                        style: AppStyles.styleRegular9(context),
                      ),
                      const Gap(5),
                      Text("04/2025", style: AppStyles.styleRegular13(context)),
                    ],
                  ),

                  const Gap(22),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CVV", style: AppStyles.styleRegular9(context)),
                      const Gap(5),
                      Text("6986", style: AppStyles.styleRegular13(context)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      SvgPicture.asset(
                        ImageAssets.masterCard,
                        fit: BoxFit.cover,
                      ),
                      const Gap(5),
                      Text(
                        "Mastercard",
                        style: AppStyles.styleRegular13(context),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
