import 'package:dartz/dartz.dart';
import 'package:flutter_checkout_payment/core/errors/failures.dart';
import 'package:flutter_checkout_payment/features/checkout/data/models/payment_intent_input_model.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
