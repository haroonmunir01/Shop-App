import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/product_detail_screen.dart';
import '../providers/product.dart';
class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final product=Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(child:
      GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments: product.id);
        },
        child: Image.network(
          product.imageUrl!,
          fit: BoxFit.cover),
      ),
          footer:
          GridTileBar(
            leading: IconButton(
              color: Theme.of(context).colorScheme.secondary,
              icon: Icon(product.isFavorite ? Icons.favorite:Icons.favorite_border),
              onPressed: (){
                product.toggleFavourite();
              }
            ),
            title: Text(product.title!, textAlign: TextAlign.center,),
            backgroundColor: Colors.black87,
            trailing: IconButton(
              color: Theme.of(context).colorScheme.secondary,
              icon: const Icon(Icons.shopping_cart),
              onPressed: (){},),
          ),
      ),
    );
  }
}
