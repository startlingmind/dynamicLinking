import 'package:flutter/material.dart';

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
    );
  }
}

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Shop App')),
        body: GridView.builder(
            itemCount: 100,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (ctx, index) {
              return Container(
                  padding: EdgeInsets.all(20),
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
