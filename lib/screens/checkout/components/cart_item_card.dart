import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/provider/add_to_cart_provider.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartItems>(
      builder: (context, cart, child) {
        return ListView.separated(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (contex, index) => SizedBox(height: 4),
          itemCount: cart.addedCartItems.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(cart.addedCartItems[index].toString()),
              onDismissed: (direction) {
                cart.removeCartItem(index);
                cart.addedCartItems.removeAt(index);
                cart.getTotal();
                // Get.snackbar(
                //   '',
                //   'Item removed from cart',
                //   snackPosition: SnackPosition.BOTTOM,
                //   backgroundColor: Colors.red,
                //   colorText: Colors.white,
                // );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 1,
                // color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              color: cart.addedCartItems[index].color,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 8,
                            child: SizedBox(
                              height: 80,
                              width: 100,
                              child: Image.asset(
                                cart.addedCartItems[index].image,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cart.addedCartItems[index].title,
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$${cart.addedCartItems[index].price.toString()}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffECECEC),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            'x1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
