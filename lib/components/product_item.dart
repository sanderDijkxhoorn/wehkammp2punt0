import 'package:flutter/material.dart';
import 'package:wehkammp2punt0/components/hero_animation.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.price,
  });

  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        children: [
          HeroAnimation(
            imageurL: imageUrl,
            description: description,
            price: price,
          ),
          Text(title),
        ],
      ),
    );
  }
}
