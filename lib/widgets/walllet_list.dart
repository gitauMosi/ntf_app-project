// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ntf_app/presentation/core/color.dart';

import '../models/coin.dart';

// ignore: must_be_immutable
class WallletList extends StatelessWidget {
  CryptoCurrency cry;
  WallletList({
    super.key,
    required this.cry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: Colors.grey[200]!,
          )),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(cry.imgUrl),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text(
                      'Buy',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor),
                    )),
                const SizedBox(
                  width: 8,
                ),
                Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    label: const Text("Sell")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
