import 'package:flutter/material.dart';
import 'package:shopapp/widgets/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title:const Text('MyShop'),
    ),
      body:ProductsGrid()
    );
  }
}
