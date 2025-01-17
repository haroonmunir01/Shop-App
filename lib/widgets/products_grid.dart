import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import'product_item.dart';
import 'package:shopapp/providers/Products.dart';

class ProductsGrid  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final productsData=Provider.of<Products>(context);
    final products=productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx,i)=>ChangeNotifierProvider.value(
          value:products[i],
          child: ProductItem(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),

    );
  }
}
