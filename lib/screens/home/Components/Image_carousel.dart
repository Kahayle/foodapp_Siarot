// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../demoData.dart';
class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    super.key,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
 int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemCount: demoBigImages.length,
            onPageChanged: (value){
              setState(() {
                currentPage = value;
              });
            },
              itemBuilder: (context, index) =>
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.asset(demoBigImages[0]))),
                
               Positioned(
                bottom: defaultPadding,
                right: defaultPadding,
                child: Row(
                  children: List.generate(
                    demoBigImages.length, (index) => const Padding(
                      padding: EdgeInsets.only(left: defaultPadding),
                      child: IndicatorDot(isActive: false),
                    )),
                ),
              )
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive,
    
  }): super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
        color:  isActive ?  Colors.white : Colors.white38,
        borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      
    );
  }
}