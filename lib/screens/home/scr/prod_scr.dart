import 'package:flutter/material.dart';

class ProdPage extends StatelessWidget {
  const ProdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            ProdItem(text: "Product", icon: Icons.shopping_bag),
            ProdItem(text: "Service", icon: Icons.shopping_bag),
            ProdItem(text: "Dealer", icon: Icons.dashboard),
            ProdItem(text: "Booking", icon: Icons.shopping_bag),
          ],
        ),
      ),
    );
  }
}

class ProdItem extends StatelessWidget {
  final String text;

  final IconData icon;
  const ProdItem({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60,
                  width: 80,
                  child: Card(child: Icon(icon)),
                ),
                Text(text)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
