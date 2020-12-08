import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/provider/add_to_cart_provider.dart';
import 'package:shop_app/screens/checkout/checkout.dart';

AppBar buildAppBar(BuildContext context, product) {
  return AppBar(
    backgroundColor: product.color,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        'assets/icons/back.svg',
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {},
      ),
      Stack(
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
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
