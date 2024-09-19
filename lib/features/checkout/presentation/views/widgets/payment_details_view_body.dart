import 'package:flutter/material.dart';
import 'package:flutter_checkout_payment/core/widgets/custom_button.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
              child: CustomButton(),
            ),
          ),
        ),
      ],
    );
  }
}
