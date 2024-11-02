import 'package:flutter/material.dart';
import 'package:ntf_app/presentation/core/color.dart';
import 'package:ntf_app/views/home/home_screen.dart';
import 'package:ntf_app/views/portfolio/portfolio_screen.dart';
import 'package:ntf_app/views/profile/profile_screen.dart';
import 'package:ntf_app/views/wallet/wallet_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedItemIndex = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const PortfolioScreen(),
    const WalletScreen(),
    const ProfileScreen()
  ];

  void onItemSelectedIndex(int index) {
    setState(() {
      selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItemIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItemIndex,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: onItemSelectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            btnNavItem("Home", Icons.mail_outline),
            btnNavItem("portfolio", Icons.timeline),
            btnNavItem("wallet", Icons.wallet),
            btnNavItem("portfolio", Icons.person)
          ]),
    );
  }

  BottomNavigationBarItem btnNavItem(String label, IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
