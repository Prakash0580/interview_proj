import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Category",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryItem(
                  text: "Rickshaw",
                  src: "assets/images/rickshaw.png",
                ),
                CategoryItem(
                  text: "Auto",
                  src: "assets/images/auto.png",
                ),
                CategoryItem(
                  text: "Bike",
                  src: "assets/images/bike.png",
                ),
                CategoryItem(
                  text: "car",
                  src: "assets/images/car.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String text;

  final String src;
  const CategoryItem({super.key, required this.text, required this.src});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 60,
                        width: 80,
                        child: Card(child: Image.asset(src))),
                    Text(text)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
