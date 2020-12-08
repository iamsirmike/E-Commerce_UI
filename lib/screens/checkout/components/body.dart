import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/provider/add_to_cart_provider.dart';
import 'package:shop_app/screens/checkout/components/cart_item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          0, kDefaultPaddin, kDefaultPaddin, kDefaultPaddin),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: kDefaultPaddin),
                            child: Text(
                              'Cart',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          CartItemCard(),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPaddin),
                      child: Row(
                        children: [
                          Text(
                            '${Provider.of<CartItems>(context).addedCartItems.length.toString()} items',
                            style: TextStyle(
                              color: kTextLightColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$${Provider.of<CartItems>(context).getTotal().toString()}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPaddin),
              child: Row(
                children: [
                  Text(
                    'Proceed to checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 100,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffFEC300),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(Icons.arrow_downward)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
