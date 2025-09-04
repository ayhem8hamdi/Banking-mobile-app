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
          "Built-in Fingerprint, face recognition and more, keeping you completely safe",
    },
    {
      "image": ImageAssets.onboarding2,
      "title": "Easy Money Transfer",
      "description":
          "Send and receive money instantly, with just a few taps on your phone.",
    },
    {
      "image": ImageAssets.onboarding3,
      "title": "Track Your Spending",
      "description":
          "Monitor your expenses in real-time and stay on top of your financial health.",
    },
  ];

  void _onNextPressed() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // TODO: Navigate to login/home
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
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
      ),
    );
  }
}
