import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      width: 305,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/master_card.svg"),
          const SizedBox(
            width: 23,
          ),
          Text.rich(TextSpan(children: [
            const TextSpan(
                text: 'Credit Card ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0)),
            TextSpan(
              text: 'Master Card **78',
              style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.699999988079071),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
          ]))
        ],
      ),
    );
  }
}
