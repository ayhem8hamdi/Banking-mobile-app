import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle24 = AppStyles.styleRegular24(context);
    final textStyle13 = AppStyles.styleRegular13(context);
    final textStyle9 = AppStyles.styleRegular9(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(ImageAssets.cardLeftIcon, fit: BoxFit.cover),
        const Gap(26),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("4562", style: textStyle24),
            Text("1122", style: textStyle24),
            Text("4595", style: textStyle24),
            Text("7852", style: textStyle24),
          ],
        ),
        const Gap(12),
        Text("AR Jonson", style: textStyle13),
        const Gap(12),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Expiry Date", style: textStyle9),
                const Gap(5),
                Text("04/2025", style: textStyle13),
              ],
            ),

            const Gap(22),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CVV", style: textStyle9),
                const Gap(5),
                Text("6986", style: textStyle13),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                SvgPicture.asset(ImageAssets.masterCard, fit: BoxFit.cover),
                const Gap(5),
                Text("Mastercard", style: textStyle13),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
