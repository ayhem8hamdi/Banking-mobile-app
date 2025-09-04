import 'package:banking_app/core/shared_widgets/app_button.dart';
import 'package:banking_app/features/splash_onboarding/presentation/views/widgets/on_boarding_content_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              const Gap(40),
              OnBoardingImage(size: size, image: image),
              const Flexible(child: Gap(41)),
              DotsIndicators(
                pageController: pageController,
                pageCount: pageCount,
              ),
              const Flexible(child: Gap(36)),
              OnBoardingTitleAndCaption(title: title, description: description),
              const Spacer(),
            ],
          ),
        ),

        Positioned(
          left: 22,
          right: 22,
          bottom: 10,
          child: AppButton(
            text: currentPage == pageCount - 1 ? "Get Started" : "Next",
            onPressed: onNextPressed,
          ),
        ),
      ],
    );
  }
}
