import 'package:flutter/material.dart';
import 'package:myapp/widgets/details.dart/details_main.dart';
import 'package:myapp/widgets/home/home_main.dart';
import 'package:myapp/models/product_list.dart';
import 'package:myapp/widgets/productCart/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/product-details': (context) => const ProductDetailsPage(),
          '/my-cart': (context) => const MyCart(),
        },
      ),
    );
  }
}
