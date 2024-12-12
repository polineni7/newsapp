import 'package:carousel_slider_x/carousel_slider_x.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/slider_model.dart';

class ComplicatedImage extends StatelessWidget {
  const ComplicatedImage({super.key, required this.imgList});

  final List<sliderModel> imgList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Set fixed height for the slider
      child: CarouselSlider(
        options: const CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          viewportFraction: 0.8, // Show part of the previous and next items
        ),
        items: imgList.map((item) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0), // Adjust margin
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: Stack(
                children: <Widget>[
                  item.image != null
                      ? Center(
                          child: Image.asset(
                            item.image!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        )
                      : Container(color: Colors.grey),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                      ),
                      child: Text(
                        item.name ?? 'No Title',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}