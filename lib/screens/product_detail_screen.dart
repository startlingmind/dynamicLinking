import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  static String id = "product_detail";
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail Screen'),
      ),
      body: const Center(
        child: Text(
            'You have been redirected to the product overview screen page'),
      ),
    );
  }
}
