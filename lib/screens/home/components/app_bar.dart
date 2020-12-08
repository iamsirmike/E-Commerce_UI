import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/provider/add_to_cart_provider.dart';
import 'package:shop_app/screens/checkout/checkout.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      'Fashionista',
      style:
          ThemeData().textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      Stack(
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kTextColor,
            ),
            onPressed: () {
              Get.to(Checkout());
            },
          ),
          Provider.of<CartItems>(context).addedCartItems.length > 0
              ? Positioned(
                  left: 31,
                  top: 6,
                  child: Container(
                    height: 20,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Color(0xffFEC300),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}
