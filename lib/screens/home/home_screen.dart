import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/body.dart';

import 'components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }
}
