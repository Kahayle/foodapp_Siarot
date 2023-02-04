import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/screens/home/Components/Image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kActiveColor),
                
                ),
                const Text(
                  "San Francisco",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
           const SliverPadding(
             padding: EdgeInsets.symmetric(horizontal: defaultPadding),
             sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
                     ),
           ),
           
        ],
      ),
    );
  }
}


