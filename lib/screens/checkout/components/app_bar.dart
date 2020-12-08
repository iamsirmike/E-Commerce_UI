import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        'assets/icons/back.svg',
        color: kTextColor,
      ),
      onPressed: () => Navigator.pop(context),
    ),
  );
}
