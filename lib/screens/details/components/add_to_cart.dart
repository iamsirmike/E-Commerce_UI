import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product_model.dart';
import 'package:shop_app/provider/add_to_cart_provider.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({
    @required this.product,
    this.numOfItems,
  });

  final ProductModel product;
  final int numOfItems;

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  successSnackBar() {
    Get.snackbar(
      widget.product.isselected ? 'Nice' : 'Ooops',
      widget.product.isselected
          ? 'Item added to cart'
          : 'Item removed from cart',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor:
          widget.product.isselected ? widget.product.color : Colors.red,
      colorText: Colors.white,
    );
  }

  addToCart() {
    setState(() {
      widget.product.isselected = !widget.product.isselected;
    });
    Provider.of<CartItems>(context, listen: false).onItemAdded(
      widget.product.image,
      widget.product.title,
      widget.product.price,
      widget.product.color,
      widget.numOfItems,
    );
    // Provider.of<CartItems>(context,listen:false).getTotal();
    successSnackBar();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              color: widget.product.isselected
                  ? widget.product.color
                  : Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: widget.product.color,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: widget.product.isselected
                    ? Colors.white
                    : widget.product.color,
              ),
              onPressed: () {
                addToCart();
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: widget.product.color,
                onPressed: () {},
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
