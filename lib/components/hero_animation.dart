import 'package:flutter/material.dart';
import 'package:wehkammp2punt0/components/photo_hero.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({
    super.key,
    required this.imageurL,
    required this.description,
    required this.price,
  });

  final String imageurL;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return PhotoHero(
      photo: imageurL,
      width: 300.0,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Product Details'),
            ),
            body: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Image.network(imageurL),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '€ $price',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
      },
    );
  }
}
