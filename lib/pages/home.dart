import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/models/slider_model.dart';
import 'package:newsapp/others/CategoryTail.dart';
import 'package:newsapp/others/ComplicatedImage.dart';
import 'package:newsapp/services/data.dart';
import 'package:newsapp/services/slider_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<sliderModel> sliders = [];

  @override
  void initState() {
    super.initState();
    categories = GetCategories(); // Fetch categories from the data source
    sliders = GetSlidersdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter"),
            Text(
              " News",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Category list
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategoryTail(
                  image: categories[index].image,
                  categoryName: categories[index].categoryName,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Breaking News!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23, // Larger font size for better visibility
                    fontWeight: FontWeight.w700, // Bold weight for emphasis
                    fontFamily: 'Roboto', // Use a readable font family
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18, // Slightly smaller font size
                    fontWeight: FontWeight.w500, // Medium weight for contrast
                    fontFamily: 'Roboto', // Use the same font family
                  ),
                ),
              ],
            ),
          ),
          ComplicatedImage(imgList: sliders), 
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending News!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23, // Larger font size for better visibility
                    fontWeight: FontWeight.w700, // Bold weight for emphasis
                    fontFamily: 'Roboto', // Use a readable font family
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18, // Slightly smaller font size
                    fontWeight: FontWeight.w500, // Medium weight for contrast
                    fontFamily: 'Roboto', // Use the same font family
                  ),
                ),
              ],
            ),
          ),
          ComplicatedImage(imgList: sliders), // Directly use ComplicatedImage
        ],
      ),
    );
  }
}
