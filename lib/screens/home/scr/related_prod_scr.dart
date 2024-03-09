import 'package:flutter/material.dart';
import '../../../utils/common_style.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Items(),
        Items(),
      ],
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          RelatedProdItem(
            price: "700000 Lakh",
            details: "Electric Auto for\n 7 pessenger",
            image: "assets/images/auto.png",
            rating: "3.2",
          ),
          SizedBox(width: 10.0),
          RelatedProdItem(
            price: "700000 Lakh",
            details: "Electric Bike for\n 7 pessenger",
            image: "assets/images/bike.png",
            rating: "3.2",
          ),
        ],
      ),
    );
  }
}

class RelatedProdItem extends StatelessWidget {
  final String image, rating, details, price;
  const RelatedProdItem({
    super.key,
    required this.image,
    required this.rating,
    required this.details,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 150,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(rating),
                      const Icon(
                        Icons.star,
                        size: 15,
                      )
                    ],
                  ),
                  Image.asset(
                    image,
                    height: 100,
                  ),
                  // "Electric Auto for\n 7 pessenger"
                  // "assets/images/auto.png"
                  const SizedBox(
                    height: 5.0,
                  ),
                  Center(
                    child: Text(
                      details,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    price,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primaryColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FullImageItem extends StatelessWidget {
  const FullImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset("assets/images/bikes.png"),
    );
  }
}
