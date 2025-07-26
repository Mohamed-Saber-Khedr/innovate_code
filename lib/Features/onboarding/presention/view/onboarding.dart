import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 580,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) => pages[index],
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: pages.length,
              effect: const WormEffect(
                activeDotColor: Color(0xff021026),
                dotColor: Color(0xffE3E3E3),
                dotHeight: 4,
                dotWidth: 15,
                spacing: 10,
              ),
            ),
            const SizedBox(height: 120),
            InkWell(
              onTap: () {
                if (_currentPage < pages.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else {
                  Navigator.pushReplacementNamed(context, '/login');
                }
              },
              child: Container(
                width: 320,
                height: 47,
                decoration: BoxDecoration(
                  color: Color(0xff0053DA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Next",style:TextStyle(fontSize: 16,color: Colors.white),
                  ),
                ),
              )
            ),
            InkWell(
              onTap: () {
                  print("Login screen");
              },
              child: Container(
                width: 320,
                height: 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Skip",style:TextStyle(fontSize: 16,color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

final List<Widget> pages = [
  const OnboardingPage(
    image: "assets/Onboarding Banner - 1.png",
    title: "Welcome to Inno Code",
    description: "Ignite your skills in tech and design. Your learning journey starts now.",
  ),
  const OnboardingPage(
    image: "assets/Onboarding Banner - 2.png",
    title: "Explore. Learn. Build.",
    description: "From coding to UX, discover courses that shape your future.",
  ),
  const OnboardingPage(
    image: "assets/Onboarding Banner - 3.png",
    title: "Ready to upgrade your future?",
    description: "Choose your path in Web, Mobile, UX, or Data Science. Let's code your success!",
  ),
];