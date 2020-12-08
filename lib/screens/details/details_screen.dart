import 'package:flutter/material.dart';
import 'package:shop_app/models/Product_model.dart';
import 'package:shop_app/screens/details/components/body.dart';

import 'components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context, product),
      body: Body(product: product),
    );
  }

 
}
