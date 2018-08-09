import 'package:flutter/material.dart';
import 'package:flutter_redux_app/datamodels/Product.dart';

class ProductCard extends Card {
    final Product product;
    final BuildContext context;
    
    ProductCard({this.context, this.product}): super(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                AspectRatio(
                                    aspectRatio: 18.0 / 11.0,
                                    child: Image.asset(
                                        product.imageUrl,
                                        fit: BoxFit.fitWidth,
                                    )
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            Text(
                                                product.title,
                                                style: Theme.of(context).textTheme.title,
                                                maxLines: 1,
                                            ),
                                            SizedBox(height: 8.0),
                                            Text(
                                                product.price.toString(),
                                            style: Theme.of(context).textTheme.body1)
                                        ],
                                    )
                                )
                            ],
                        ),
                    );
}