import 'package:flutter/material.dart';
import 'package:shopapp/providers/Products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const  routeName='/product-detail';
  @override
  Widget build(BuildContext context) {
   final  productId= ModalRoute.of(context)!.settings.arguments as String;
   final loadedProduct=Provider.of<Products>(context).findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title!),),
    );
  }
}
