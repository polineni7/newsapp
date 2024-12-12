import 'package:flutter/material.dart';

class CategoryTail extends StatefulWidget {
  final String? image;
  final String? categoryName;

  const CategoryTail({super.key, this.image, this.categoryName});

  @override
  _CategoryTailState createState() => _CategoryTailState();
}

class _CategoryTailState extends State<CategoryTail> {
  // This boolean is used to toggle the animation
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Optional: handle tap event here
      },
      child: MouseRegion(
        onEnter: (event) => setState(() => isHovered = true),
        onExit: (event) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), // Rounded corners
            boxShadow: [
              if (isHovered)
                const BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
            ],
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Rounded corners for the card
            ),
            elevation: isHovered ? 8.0 : 2.0, // Elevation change on hover
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Use a default image if `image` is null
                  Image.asset(
                    widget.image ?? 'assets/images/default_image.png',
                    width: 120,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  // Overlay with category name, fallback to 'Unknown' if null
                  Container(
                    color: Colors.black45,
                    width: 120,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      widget.categoryName ?? 'Unknown',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
