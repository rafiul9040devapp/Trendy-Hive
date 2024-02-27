
import 'package:trendy_hive/constants/assets.dart';

class PaymentService{
  final String serviceImage;
  final String serviceName;

  PaymentService(this.serviceImage, this.serviceName);

  static List<PaymentService> paymentServiceList = [
    PaymentService(AppImages.paypal, "PayPal"),
    PaymentService(AppImages.amazon, "Amazon Pay"),
    PaymentService(AppImages.master, "Master Card"),
    PaymentService(AppImages.visa, "Visa Card"),
    PaymentService(AppImages.icon2, "Google Pay"),
  ];

}
