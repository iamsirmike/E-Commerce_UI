import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product_model.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatefulWidget {
  const CounterWithFavBtn({
    @required this.product,
  });

  final ProductModel product;
  @override
  _CounterWithFavBtnState createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        GestureDetector(
          onTap: () {
            setState(() {
              fav = !fav;
              print(widget.product.color);
            });
          },
          child: Container(
            padding: EdgeInsets.all(8),
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: fav ? widget.product.color : Colors.white,
              border: Border.all(color: widget.product.color),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/heart.svg"),
          ),
        )
      ],
    );
  }
}
