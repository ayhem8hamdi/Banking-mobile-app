import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/features/splash_onboarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  final _pageController = PageController();
  int _currentPage = 0;

  final _pages = [
    {
      "image": ImageAssets.onboarding1,
      "title": "Fastest Payment in the world",
      "description":
          "Integrate multiple payment methoods to help you up the process quickly",
    },
    {
      "image": ImageAssets.onboarding2,
      "title": "The most Secoure Platfrom for Customer",
      "description":
          "Built-in Fingerprint, face recognition and more, keeping you completely safe",
    },
    {
      "image": ImageAssets.onboarding3,
      "title": "Paying for Everything is Easy and Convenient",
      "description":
          "Built-in Fingerprint, face recognition and more, keeping you completely safe",
    },
  ];

  void _onNextPressed() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      // TODO: Navigate to login/home
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: _pages.length,
      onPageChanged: (index) {
        setState(() => _currentPage = index);
      },
      itemBuilder: (context, index) {
        final page = _pages[index];
        return OnBoardingBody(
          image: page["image"]!,
          title: page["title"]!,
          description: page["description"]!,
          pageController: _pageController,
          pageCount: _pages.length,
          currentPage: _currentPage,
          onNextPressed: _onNextPressed,
        );
      },
    );
  }
}
