import 'package:flutter/material.dart';
import 'package:flutter_checkout_payment/core/utils/styles.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 65,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1.50,
                          color: Color(0xFF34A853),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Center(
                    child: Text(
                      "PAID",
                      style: Styles.style24
                          .copyWith(color: const Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: (MediaQuery.sizeOf(context).height * .1 + 20 / 2) - 29,
            )
          ],
        ),
      ),
    );
  }
}
