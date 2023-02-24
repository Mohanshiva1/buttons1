import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
import 'package:upi_payment_qrcode_generator/upi_payment_qrcode_generator.dart';

class QR extends StatefulWidget {
  const QR({Key? key}) : super(key: key);

  @override
  State<QR> createState() => _QRState();
}

class _QRState extends State<QR> {
  TextEditingController controller = TextEditingController();

  final upiDetails = UPIDetails(
      upiID: "UPI ID Here eg. 73641234@paytm",
      payeeName: "Payee Name Here",
      amount: 1,
      transactionNote: "Hello World");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: QrImage(
          //     data: controller.text,
          //     version: QrVersions.auto,
          //     size: 200.0,
          //   ),
          // ),
          UPIPaymentQRCode(upiDetails: upiDetails,size: 200,),
          Container(
            height: 50,
            width: 300,
            color: Colors.transparent,
            child: Center(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Value'
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
