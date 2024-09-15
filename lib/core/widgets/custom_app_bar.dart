import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_checkout_payment/core/utils/styles.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset("assets/images/arrow1.svg"),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
