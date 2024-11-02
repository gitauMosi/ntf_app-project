import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntf_app/auth/signup_screen.dart';
import 'package:ntf_app/presentation/core/color.dart';
import 'package:ntf_app/views/main_page.dart';
import 'package:ntf_app/widgets/custom_btn1.dart';
import 'package:ntf_app/widgets/custom_btn2.dart';

import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  "Login to your account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 36),
                CustomTextFormField(
                  labelText: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email address';
                    }
                    // Simple email validation regex
                    const emailRegex = r'^[^@]+@[^@]+\.[^@]+';
                    if (!RegExp(emailRegex).hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  labelText: 'Password',
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                 const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                   // Get.to(() =>  SignupScreen());
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
               
                const SizedBox(
                  height: 16,
                ),
                CustomBtn1(
                    label: "Login to your account",
                    function: () {
                       if (_formKey.currentState!.validate()) {
                        // Process data if the form is valid
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Login Successfully')),
                        );
                        Get.offAll(() => const MainPage());
                      }
                    }),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() =>  SignupScreen());
                  },
                  child: const Text(
                    "Don't have an account",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Divider(),
                const SizedBox(
                  height: 20,
                ),
                CustomBtn2(label: "Continue with Google",
                 function: (){},
                  color: AppColor.greyColorPrimary.withOpacity(0.6),
                  imgUrl: "assets/icons/google.png",),
                  const SizedBox(
                  height: 15,
                ),
                CustomBtn2(label: "Continue with Google",
                 function: (){},
                  color: AppColor.greyColorPrimary.withOpacity(0.6),
                  imgUrl: "assets/icons/facebook.png",),
                  const SizedBox(
                  height: 15,
                ),
                CustomBtn2(label: "Continue with Google",
                 function: (){},
                 color: AppColor.greyColorPrimary.withOpacity(0.6),
                  imgUrl: "assets/icons/apple.png",),
                  const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
