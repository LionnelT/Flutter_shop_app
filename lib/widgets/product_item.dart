import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shop_app/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  final String id;
  final String title;
  final String imageUrl;

  // ProductItem({required this.id, required this.imageUrl, required this.title})

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => ProductDetailsScreen(
          //           title: title,
          //           price: price,
          //         )));

          Navigator.of(context)
              .pushNamed(ProductDetailsScreen.routeName, arguments: id);
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
