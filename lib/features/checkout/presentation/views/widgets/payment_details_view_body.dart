import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 103,
          height: 62,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1.50,
                color: Color(0xFF34A853),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                  color: Color(0xFF34A853),
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
                child: SvgPicture.asset(
              "assets/images/card.svg",
              height: 24,
            )),
          ),
        ),
      ],
    );
  }
}
