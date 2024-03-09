import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor = Colors.red;
  static const whilteColor = Colors.white;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

class CusText extends StatelessWidget {
  const CusText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Related Product",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: AppColor.primaryColor),
      ),
    );
  }
}
