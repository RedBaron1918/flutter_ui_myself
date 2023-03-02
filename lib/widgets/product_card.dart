import 'package:clothe_store/models/products.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                fit: BoxFit.cover,
                width: 150,
                height: 150,
                image: NetworkImage(
                  "${product.imageUrl}",
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow[400],
            ),
            Text("${product.rating}"),
            Text("(${product.reviews} Reviews) | ${product.sold}")
          ],
        ),
        Text("${product.productName}"),
        Text("\$ ${product.price}")
      ],
    );
  }
}
