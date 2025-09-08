import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/stats/presentation/views/widgets/single_value_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MonthlySpendingRangeContainer extends StatelessWidget {
  const MonthlySpendingRangeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 23,
          bottom: 39,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: cs.tertiary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                r"Amount: $8,545.00",
                style: AppStyles.styleRegular13(
                  context,
                ).copyWith(color: cs.onSurface),
              ),
            ),
            const Gap(27),
            const SingleValueSlider(),
          ],
        ),
      ),
    );
  }
}
