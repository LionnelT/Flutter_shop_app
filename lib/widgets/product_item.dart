import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.id, required this.title, required this.imageUrl}) : super(key: key);

  final String id;
  final String title;
  final String imageUrl;

  // ProductItem({required this.id, required this.imageUrl, required this.title})

  @override

  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(imageUrl),
    );
  }
}