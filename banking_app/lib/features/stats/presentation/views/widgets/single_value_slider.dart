import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class SingleValueSlider extends StatefulWidget {
  const SingleValueSlider({super.key});

  @override
  State<SingleValueSlider> createState() => _SingleValueSliderState();
}

class _SingleValueSliderState extends State<SingleValueSlider> {
  double _currentValue = 5000;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        double sliderWidth = constraints.maxWidth;
        double thumbPercent = _currentValue / 10000;
        double thumbX = thumbPercent * (sliderWidth - 26);

        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerLeft,
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 4,
                activeTrackColor: theme.brightness == Brightness.dark
                    ? Colors.white
                    : cs.primary,
                inactiveTrackColor: cs.surface,
                thumbColor: Colors.white,
                overlayColor: cs.primary,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 10,
                  disabledThumbRadius: 10,
                ),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 13),
              ),
              child: Slider(
                value: _currentValue,
                min: 0,
                max: 10000,
                divisions: 10000,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
            ),

            Positioned(
              left: thumbX,
              bottom: 29,
              child: Text(
                "\$${_currentValue.round().toString()}",
                style: AppStyles.styleRegular12(
                  context,
                ).copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),

            Positioned(
              left: 9,
              bottom: -20,
              child: Text(r"$0", style: AppStyles.styleRegular12(context)),
            ),

            Positioned(
              right: 10,
              bottom: -20,
              child: Text(r"$10,000", style: AppStyles.styleRegular12(context)),
            ),
          ],
        );
      },
    );
  }
}
