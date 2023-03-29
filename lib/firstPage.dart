import 'package:flutter/material.dart';
import 'package:food_delivery/homePage.dart';
import './widgets/menuCard.dart';
import './dummyData.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: Image.asset('assets/images/pic10.png'),
        actions: [
          GestureDetector(
            child: Image.asset('assets/images/pic11.png'),
            onTap: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Delivery To ",
                    style: TextStyle(fontSize: 25),
                  ),
                  IconButton(
                    icon: Icon(_isExpanded
                        ? Icons.keyboard_arrow_down_sharp
                        : Icons.keyboard_arrow_up_sharp),
                    onPressed: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              if (_isExpanded)
                const Text(
                  'Mountain View, CA',
                  style: TextStyle(fontSize: 35),
                ),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                height: 3,
                color: Colors.black,
                indent: 3,
                endIndent: 3,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Popular',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      child: const Text('View all'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              MenuCard(data: foodMostPopularList),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Popular',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      child: const Text('View all'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              MenuCard(data: foodNearbyList),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Rated',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      child: const Text('View all'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              MenuCard(data: foodMostPopularList),
            ],
          ),
        ),
      ),
    );
  }
}
