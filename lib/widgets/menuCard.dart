import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/customCard.dart';
import '../dummyData.dart';

class MenuCard extends StatelessWidget {
  final List data;

  MenuCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodMostPopularList.length,
        itemBuilder: (context, index) => CustomCard(
            imageUrl: data[index].imageUrl,
            placeName: data[index].placeName,
            address: data[index].address),
      ),
    );
  }
}
