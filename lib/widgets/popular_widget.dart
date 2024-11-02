import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/coin.dart';
import '../views/home/details_view_page.dart';

// ignore: must_be_immutable
class PopularWidget extends StatelessWidget {
  final CryptoCurrency cry;

  const PopularWidget({
    super.key,
    required this.cry,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>  DetailsViewPage(cry: cry,));
      },
      child: Container(
        width: 100,
        height: 150, // Fixed height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(cry.imgUrl),
              ),
              const SizedBox(height: 4), // Spacing
              Flexible(
                // Wrap this section in Flexible
                child: Text(
                  cry.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ),
              Flexible(
                // Wrap this section in Flexible
                child: Text(
                  cry.price.toString(),
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ),
              const SizedBox(height: 5),
              Flexible(
                // Wrap this section in Flexible
                child: Text(
                  '\$${cry.changeValue.toString()}',
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ),
              const SizedBox(height: 5),
              Flexible(
                // Wrap this section in Flexible
                child: Text(
                  '\$ ${cry.changePercentage.toString()}',
                  style: TextStyle(
                    fontSize: 12,
                    color: cry.changePercentage > 0 ? Colors.green : Colors.red,
                  ),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
