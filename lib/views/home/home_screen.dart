import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:linkedin_analyst/globals/custom_elevated_button.dart';
import 'package:linkedin_analyst/globals/global_custom_input.dart';
import 'package:linkedin_analyst/views/home/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analyse your post'),
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/logo.png",
            width: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              CustomInputWidget(
                controller: controller,
                hintText: "Enter your post here",
                maxLines: 10,
              ),
              const Gap(20),
              CustomElevatedButton(
                text: "Analyse",
                onPressed: () {
                  Get.to(ResultScreen(post: controller.text));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
