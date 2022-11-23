import 'package:flutter/material.dart';
import 'package:wehkammp2punt0/components/product_item.dart';
import 'package:wehkammp2punt0/models/product.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({super.key});

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  List<Product> loadedProducts = <Product>[
    Product(
      id: '1',
      title: 'HP Laptop',
      description: '15S-FQ2400ND 15.6 inch Full HD laptop',
      price: 429.99,
      imageUrl:
          'https://images.wehkamp.nl/i/wehkamp/16674269_pb_01/hp-15s-fq2400nd-15-6-inch-full-hd-laptop-zilver-0195697223433.jpg?w=2048&h=2048&qlt=75&fit=contain',
    ),
    Product(
      id: '2',
      title: 'Wehkammp bank',
      description: 'eco-leren hoekbank rechts Lexington',
      price: 1599.02,
      imageUrl:
          'https://images.wehkamp.nl/i/wehkamp/16773218_pb_01/wehkamp-home-eco-leren-hoekbank-rechts-lexington-cognac-8719542482244.jpg?w=2048&h=2048&qlt=75&fit=contain',
    ),
    Product(
      id: '3',
      title: 'JDY jurk',
      description: 'jurk JDYGLITZ met pailletten roze',
      price: 49.99,
      imageUrl:
          'https://images.wehkamp.nl/i/wehkamp/16966739_mb_01/jdy-jurk-jdyglitz-met-pailletten-roze-roze-5715323907565.jpg?w=2048&h=3072&qlt=75&fit=contain',
    ),
    Product(
      id: '4',
      title: 'Samsung wasmachine',
      description: 'WW90T684ALE Addwash wasmachine',
      price: 636.00,
      imageUrl:
          'https://images.wehkamp.nl/i/wehkamp/16642661_pb_01/samsung-ww90t684ale-addwash-wasmachine-wit-8806090608070.jpg?w=2048&h=2048&qlt=75&fit=contain',
    ),
    Product(
      id: '5',
      title: 'Krups koffiezetapparaat',
      description: 'Dolce Gusto Genio S Plus KP3408 (zwart)',
      price: 72.99,
      imageUrl:
          'https://images.wehkamp.nl/i/wehkamp/16569738_pb_01/krups-dolce-gusto-genio-s-plus-kp3408-zwart-titanium-3016661158667.jpg?w=2048&h=2048&qlt=75&fit=contain',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wehkammp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) => ProductItem(
            id: loadedProducts[index].id,
            title: loadedProducts[index].title,
            imageUrl: loadedProducts[index].imageUrl,
            description: loadedProducts[index].description,
            price: loadedProducts[index].price,
          ),
        ),
      ),
    );
  }
}
