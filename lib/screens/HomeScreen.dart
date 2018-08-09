import 'package:flutter/material.dart';
import 'package:flutter_redux_app/datamodels/Product.dart';
import 'package:flutter_redux_app/widgets/ProductCard.dart';

class HomeScreen extends StatefulWidget{
    @override
    State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
    
    List<ProductCard> _buildSampleProducts(context){
        return [
            ProductCard(context: context, product: Product(imageUrl: "assets/images/sample-bag.jpg", title: "Test", price: 25.0)),
            ProductCard(context: context, product: Product(imageUrl: "assets/images/sample-bag.jpg", title: "Test 2", price: 23.0)),
            ProductCard(context: context, product: Product(imageUrl: "assets/images/sample-bag.jpg", title: "Test 3", price: 12.0)),
            ProductCard(context: context, product: Product(imageUrl: "assets/images/sample-bag.jpg", title: "Test 4", price: 5.0)),
            ProductCard(context: context, product: Product(imageUrl: "assets/images/sample-bag.jpg", title: "Test 5", price: 3.0)),
            ProductCard(context: context, product: Product(imageUrl: "assets/images/sample-bag.jpg", title: "Test 5", price: 43.0)),
            ProductCard(context: context, product: Product(imageUrl: "assets/images/sample-bag.jpg", title: "Test 5", price: 12.0)),
        ];
    }
    
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text("SHRINE"),
                leading: IconButton(
                    icon: Icon(
                        Icons.menu,
                        semanticLabel: "menu",
                    ),
                    onPressed: (){

                    }
                ),
                actions: <Widget>[
                    IconButton(
                        icon: Icon(
                            Icons.search,
                            semanticLabel: "search",
                        ),
                        onPressed: (){},
                    ),
                    IconButton(
                        icon: Icon(
                            Icons.tune,
                            semanticLabel: "filter",
                        ),
                        onPressed: (){},
                    )
                ],
            ),
            body: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16.0),
                childAspectRatio: 8.0 / 9.0,
                children: _buildSampleProducts(context)
            )
        );
    }
}