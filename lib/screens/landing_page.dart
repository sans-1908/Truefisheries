import 'package:flutter/material.dart';

import '../widgets/helper_functions.dart';
import 'Community/community_screen.dart';
import 'Fish/pick_your_fish_screen.dart';
import 'ai_chat_screen.dart';
import 'health/health_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XBFFFFFFF),
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        title: const Text(
          'True Fisheries',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: const Color(0XFF0A3E45),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/heroImagePng.png',
            width: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCategoryButton(
                  title: 'Health',
                  onTap: () {
                    pushNewScreen(context, screen: const HealthScreen());
                  }),
              CustomCategoryButton(
                  title: 'Pond',
                  onTap: () {
                    pushNewScreen(context, screen: const AiChatScreen());
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCategoryButton(
                  title: 'Fish',
                  onTap: () {
                    pushNewScreen(context, screen: const PickYourFishScreen());
                  }),
              CustomCategoryButton(
                  title: 'Community',
                  onTap: () {
                    pushNewScreen(context, screen: const CommunityScreen());
                  }),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCategoryButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomCategoryButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0XF773D2AB),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Container(
          height: 150,
          width: 150,
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
