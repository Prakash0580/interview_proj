import 'package:flutter/material.dart';

import '../utils/common_style.dart';
import '../utils/txt_field.dart';

class CusAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CusAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(135.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColor.whilteColor,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Noida Sector 62",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColor.whilteColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              SizedBox(
                height: 40,
                width: width(context) / 1.4,
                child: const TxtField(),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add,
                  size: 25,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
