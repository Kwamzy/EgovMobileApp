import 'package:egovservice/config/palette.dart';
import 'package:egovservice/payment_pack/select_customer_for_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget{
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.2,
      title: Text(
        "Payment",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
          color: Colors.black
        ),
      ),
    ),

    body: Container(
      color: Colors.white,
      child: Column(
          children: [

      Container(
      margin: EdgeInsets.all(20),
      child: TextButton(
        onPressed: () {
          Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Select_Customer_For_Payment()));
        },
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.chevron_right_outlined),
              labelText: "Select a Customer",
              hintText: "Select a Customer",
              hintStyle:  TextStyle(
                  fontSize: 14,
                  color: Palette.textColor2
              ),
        ),

        // decoration: InputDecoration(
        //   suffixIcon: Icon(Icons.chevron_right_outlined),
        //   labelText: "Select a Customer",
        //   hintText: "Select a Customer",
        //   hintStyle:  TextStyle(
        //       fontSize: 14,
        //       color: Palette.textColor2
        //   ),
        // ),
      ),
    ),
      ),
      ],
      ),
    ),

  );
  // TODO: implement build
  throw UnimplementedError();
  }
}