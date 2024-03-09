import 'package:flutter/material.dart';
import 'package:interview_proj/screens/home/scr/image_slider_scr.dart';
import 'package:interview_proj/screens/home/scr/prod_scr.dart';
import 'package:interview_proj/screens/home/scr/category_page.dart';
import 'package:interview_proj/utils/common_style.dart';
import '../../common/cus_appbar.dart';
import 'scr/related_prod_scr.dart';
import 'scr/shop_scr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(135.0),
        child: CusAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            // Container(
            //   decoration:
            //       BoxDecoration(borderRadius: BorderRadius.circular(11),image: 
            //       ),
            //   child: Image.asset(
            //     'assets/images/nature1.jpeg',
            //     height: 100,
            //     width: 300,
            //   ),
            // ),
             ProdPage(),
             CategoryPage(),
             FullImageItem(),
             CusText(),
             RelatedProducts(),
             SizedBox(height: 15.0),
             FullImageItem(),
             SizedBox(height: 10.0),
             ShopNowText(),
             ShopScr(),
          ],
        ),
      ),
    );
  }
}
