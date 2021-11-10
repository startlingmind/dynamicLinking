import 'package:deep_link/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import './screens/product_overview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: const GridViewPage(),
      initialRoute: GridViewPage.id,
      routes: {
        ProductDetailPage.id: (context) => const ProductDetailPage(),
      },
    );
  }
}
