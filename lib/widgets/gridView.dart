import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  CustomGrid({super.key});

  List<String> data = ['GRide', 'GFood', 'GSend', 'GShop'];
  List<String> imageString = [
    'assets/images/pic3.png',
    'assets/images/pic4.png',
    'assets/images/pic5.png',
    'assets/images/pic6.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: ,
      height: 500,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 0, crossAxisSpacing: 0, crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.asset(
                      imageString[index],
                      semanticLabel: imageString[index],
                    ),
                  ),
                  Text(
                    data[index],
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
