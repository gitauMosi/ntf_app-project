import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntf_app/auth/login_screen.dart';
import 'package:ntf_app/presentation/core/color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/icons/user.jpeg'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Chip(
                    backgroundColor: Colors.grey.withOpacity(0.6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.verified,
                          size: 15,
                          color: AppColor.primaryColor,
                        ),
                        SizedBox(width: 4),
                        Text("Verified"),
                      ],
                    )),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Account Setting',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5)),
                    child: const Icon(
                      Icons.grid_view_sharp,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dashboard',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Your portfolio assets",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Divider(),
                const SizedBox(
                  height: 4,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5)),
                    child: const Icon(
                      Icons.verified_user,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Privacy Setting',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "PIN & Biometric security",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'General Settings',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 4,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5)),
                    child: const Icon(
                      Icons.account_balance,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bank Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Manage your bank account",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Divider(),
                const SizedBox(
                  height: 4,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5)),
                    child: const Icon(
                      Icons.notifications,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Manage your notification",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Divider(),
                const SizedBox(
                  height: 4,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5)),
                    child: const Icon(
                      Icons.card_giftcard,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Refferal Code',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Manage your notifications",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.offAll(()=>LoginScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor),
                    child: const Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
