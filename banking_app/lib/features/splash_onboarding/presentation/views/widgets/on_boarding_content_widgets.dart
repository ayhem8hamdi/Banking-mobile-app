import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key, required this.size, required this.image});

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size.width * 0.85,
        child: AspectRatio(
          aspectRatio: 335 / 275,
          child: SvgPicture.asset(image, fit: BoxFit.contain),
        ),
      ),
    );
  }
}

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({
    super.key,
    required this.pageController,
    required this.pageCount,
  });

  final PageController pageController;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}

class OnBoardingTitleAndCaption extends StatelessWidget {
  const OnBoardingTitleAndCaption({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold26(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 18),
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppStyles.styleRegular14(context),
        ),
      ],
    );
  }
}
