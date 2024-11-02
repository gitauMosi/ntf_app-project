// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/coin.dart';
import '../views/home/details_view_page.dart';

class AssetsWidget extends StatelessWidget {
  final CryptoCurrency cry;
  const AssetsWidget({
    super.key,
    required this.cry,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Get.to(()=> DetailsViewPage(cry: cry,));
          },
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(cry.imgUrl),
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
                  cry.changeValue.toString(),
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$ ${cry.changePercentage.toString()}',
                  style: TextStyle(
                    fontSize: 12,
                    color: cry.changePercentage > 0 ? Colors.green : Colors.red,
                  ),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ],
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
