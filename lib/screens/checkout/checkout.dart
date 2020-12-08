import 'package:flutter/material.dart';
import 'package:shop_app/screens/checkout/components/app_bar.dart';
import 'package:shop_app/screens/checkout/components/body.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }
}


