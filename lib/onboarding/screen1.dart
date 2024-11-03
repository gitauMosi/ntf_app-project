import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntf_app/auth/login_screen.dart';
import 'package:ntf_app/widgets/custom_btn1.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/nft.png",
                  width: MediaQuery.of(context).size.width * 0.80,
                ),
                const Text(
                  "Hey! Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  "This is a best-fit  app to Invest in Cryptocurrency for beginners and do trading.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomBtn1(
                    label: "Get Started",
                    function: () {
                      Get.offAll(() => LoginScreen());
                    }),
                const SizedBox(
                  height: 15,
                ),
                CustomBtn1(
                  label: "I already have an account",
                  function: () {},
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
