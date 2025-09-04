import 'package:banking_app/core/shared_widgets/app_button.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final PageController pageController;
  final int pageCount;
  final int currentPage;
  final VoidCallback onNextPressed;

  const OnBoardingBody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.pageController,
    required this.pageCount,
    required this.currentPage,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Gap(60),
              Center(
                child: SizedBox(
                  width: size.width * 0.85,
                  child: AspectRatio(
                    aspectRatio: 335 / 275,
                    child: SvgPicture.asset(image, fit: BoxFit.contain),
                  ),
                ),
              ),
              const Flexible(child: Gap(41)),
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: pageCount,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
              const Flexible(child: Gap(36)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      title,
                      style: AppStyles.styleSemiBold26(context),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: AppStyles.styleRegular14(context),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),

        Positioned(
          left: 22,
          right: 22,
          bottom: 35,
          child: AppButton(
            text: currentPage == pageCount - 1 ? "Get Started" : "Next",
            onPressed: onNextPressed,
          ),
        ),
      ],
    );
  }
}
