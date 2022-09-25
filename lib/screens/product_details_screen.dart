import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  // final String title;
  // final String price;

  const ProductDetailsScreen({
    Key? key,
    //  required this.title,
    //  required this.price
  }) : super(key: key);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
    );
  }
}
