import 'package:flutter/material.dart';
import '../../../common/common.dart';
import '../../../utils/common_style.dart';

class ShopNowItem extends StatelessWidget {
  final String image, productDetails, price;
  const ShopNowItem({
    super.key,
    required this.image,
    required this.productDetails,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Card(
        child: Column(
          children: [
            Image.asset(
              image,
              width: 100,
              height: 100,
            ),
            // 'assets/images/auto.png'
            Center(
              child: Text(productDetails),
            ),
            Text(
              price,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primaryColor),
            ),
            const Stars()
          ],
        ),
      ),
    );
  }
}

class ShopScr extends StatelessWidget {
  const ShopScr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShopNowItem(
              image: 'assets/images/auto.png',
              productDetails: "Eletric Auto for \n  7 Passenger ",
              price: " ₹ 700000",
            ),
            ShopNowItem(
              image: 'assets/images/car.png',
              productDetails: "Eletric Car for \n  4 Passenger",
              price: " ₹ 800000",
            ),
            ShopNowItem(
              image: 'assets/images/bike.png',
              productDetails: "Eletric Bike for \n  2 Passenger",
              price: " ₹ 900000",
            ),
            ShopNowItem(
              image: 'assets/images/rickshaw.png',
              productDetails: "Eletric Rikshaw for \n  7 Passenger",
              price: " ₹ 900000",
            ),
          ],
        ),
      ),
    );
  }
}



class ShopNowText extends StatelessWidget {
  const ShopNowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Shop Now",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
            ),
          ),
          Text(
            "See All",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
