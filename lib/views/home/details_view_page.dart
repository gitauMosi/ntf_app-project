import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntf_app/presentation/core/color.dart';
import 'package:ntf_app/widgets/custom_btn1.dart';

import '../../models/coin.dart';
import '../../widgets/line_chart_sample.dart';

class DetailsViewPage extends StatelessWidget {
  final CryptoCurrency cry;
  const DetailsViewPage({
    super.key,
    required this.cry,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                        image: DecorationImage(image: AssetImage(cry.imgUrl))),
                    // child: Center(child: Image(image: AssetImage(cry.imgUrl,), width: 50, height: 50,)),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        cry.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "21-10-2024",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      )
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "USD ${cry.changeValue}",
                          style: const TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${cry.changePercentage.toString()}',
                          style: TextStyle(
                            fontSize: 12,
                            color: cry.changePercentage > 0
                                ? Colors.green
                                : Colors.red,
                          ),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "${cry.name} Price",
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "\$${cry.price.toString()}",
                  style:
                      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$ ${cry.changePercentage.toString()}',
                  style: TextStyle(
                    fontSize: 12,
                    color: cry.changePercentage > 0 ? Colors.green : Colors.red,
                  ),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.primaryColor,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Text(
                        "1hr",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Text("1d"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Text("1w"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Text("1m"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Text("1y"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Text("All"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const LineChartSample2(),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Icon(Icons.verified_outlined, color: AppColor.primaryColor),
                    Text(
                      ' USD',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.verified_outlined,
                      color: AppColor.primaryColor,
                    ),
                    Text(
                      ' Market cap',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomBtn1(label: "Buy Cypto", function: () {}),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
