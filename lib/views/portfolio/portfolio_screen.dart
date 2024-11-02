import 'package:flutter/material.dart';
import 'package:ntf_app/presentation/core/color.dart';

import '../../presentation/data/data.dart';
import '../../widgets/assets_widget.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$ 5, 264.50",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Text(
                            "Portfolio balance",
                            style: TextStyle(color: AppColor.primaryColor),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.5)),
                      child: const Icon(
                        Icons.north_east,
                        color: AppColor.primaryColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text('Today\' Results'),
                    Spacer(),
                    Text(
                      '\$ 5423.30',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text('Estimated Profit'),
                    Spacer(),
                    Text(
                      '\$ 44.55',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text('Realized Profit'),
                    Spacer(),
                    Text(
                      '\$ 2526.55',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'My Assets',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
