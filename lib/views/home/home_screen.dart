import 'package:flutter/material.dart';
import 'package:ntf_app/presentation/core/color.dart';
import 'package:ntf_app/presentation/data/data.dart';
import 'package:ntf_app/widgets/assets_widget.dart';
import 'package:ntf_app/widgets/popular_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bacgroundColorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balance",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5, 264.50",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text(
                          "3.58%",
                          style: TextStyle(color: AppColor.primaryColor),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Icon(Icons.notifications_outlined),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Text(
                    'Popular Coins',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cryptoList.length,
                  padding: const EdgeInsets.all(5),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  itemBuilder: (context, index) =>
                      PopularWidget(cry: cryptoList[index]),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Text(
                    'Crypto Assets',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                    itemCount: cryptoList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (contex, index) =>
                        AssetsWidget(cry: cryptoList[index]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
