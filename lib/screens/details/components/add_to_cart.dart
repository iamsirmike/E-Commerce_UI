import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';


class AddToCart extends StatefulWidget {
  const AddToCart({
    @required this.product,
  });

  final Product product;

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool added = false;
  successSnackBar() {
    Get.snackbar(
      added ? 'Ooops' : 'Nice',
      added ? 'Item removed from cart' : 'Item added to cart',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: added ? Colors.red : widget.product.color,
      colorText: Colors.white,
    );
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
              color: added ? widget.product.color : Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: widget.product.color,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: added ? Colors.white : widget.product.color,
              ),
              onPressed: () {
                successSnackBar();
                setState(() {
                  added = !added;
                });
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
