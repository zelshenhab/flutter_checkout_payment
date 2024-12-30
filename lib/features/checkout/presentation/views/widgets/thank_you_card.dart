import 'package:flutter/material.dart';
import 'package:flutter_checkout_payment/core/utils/styles.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xFFD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              "Thank you!",
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              "Your transaction was successful",
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              title: ('Date'),
              value: ('01/24/2024'),
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: ('Time'),
              value: ('10:15 AM'),
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: ('To'),
              value: ('Sam Louis'),
            ),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const TotalPrice(title: ('Total'), value: (r'$50.97')),
            const SizedBox(
              height: 30,
            ),
            const CardInfoWidget()
          ],
        ),
      ),
    );
  }
}
