import 'package:flutter/material.dart';
import '../widget/onboarding_body.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildColumn(),
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