import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  static String id = 'product_overview';
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Shop App')),
        body: GridView.builder(
            itemCount: 100,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (ctx, index) {
              return Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.amber.shade50,
                  child: Column(
                    children: <Widget>[
                      // Center(child: Icon(Icons.shop_outlined)),
                      Text('Product No. $index'),
                      // Expanded(
                      //   //child: Icon(Icons.shopping_bag),
                      //   fit: FittedBox(fit: BoxFit.contain, child: )
                    ],
                  ));
            }));
  }
}
