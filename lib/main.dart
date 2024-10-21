import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/products.dart';
import 'package:shopapp/screens/product_detail_screen.dart';
import '../screens/products_overview_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (BuildContext context)=>Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title:'MyShop' ,
        theme: ThemeData(
          primarySwatch: Colors.purple,
           colorScheme: ColorScheme.fromSwatch(accentColor: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        home:ProductOverviewScreen(),
        routes:{
              ProductDetailScreen.routeName:(ctx)=>ProductDetailScreen(),
              }
      ),
    );
  }
}

