import 'package:flutter/material.dart';

import '../../../constants.dart';

class restaurantInfoMediumCard extends StatelessWidget {
  const restaurantInfoMediumCard({
    Key? key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    required this.location,
  }) : super(key: key);

  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              location,
              maxLines: 1,
              style: const TextStyle(color: kBodyTextColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: const BoxDecoration(
                          color: kActiveColor,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Text(
                        "$rating",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    Text("$deliveryTime min"),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 1,
                      backgroundColor: Colors.transparent,
                    ),
                    const Spacer(),
                    const Text("Free Delivery")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
