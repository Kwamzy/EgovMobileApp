import 'package:egovservice/HomePage.dart';
import 'package:egovservice/config/palette.dart';
import 'package:egovservice/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment_SuccessPage extends StatefulWidget {
  @override
  Payment_SuccessPageState createState() => Payment_SuccessPageState();

  final String name, code, number, status, amount, paymentamount, payment_mobileno;

  Payment_SuccessPage({
    required this.name,
    required this.code,
    required this.number,
    required this.status,
    required this.amount,
    required this.payment_mobileno,
    required this.paymentamount
  });

}

class Payment_SuccessPageState extends State<Payment_SuccessPage>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        child: Stack(
          children: [

            Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 260,
              color: Palette.activeColor,
              child: AspectRatio(
                aspectRatio: 451/451,
              child:  Image.asset(
                    "assets/images/success_icon2.png",
                scale: 1.8,
                ),
              ),
              ),
            ),




            Positioned(
              top: 220,
              right: 20,
              left: 20,
              child: Container(
                height: 240,
                padding: EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width - 0,
                margin: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(8.0),
                        topRight: const Radius.circular(8.0),
                        bottomLeft: const Radius.circular(8.0),
                        bottomRight: const Radius.circular(8.0)
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                          spreadRadius: 2
                      ),
                    ],
                ),

                child: Container(
                  child: Column(
                    children: [
                SizedBox(height: 10,),
                  Center(
                    child: Text(
                      "Your Transaction is \nSuccessful.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                  ),

                SizedBox(height: 20,),

                Center(
                  child: Text(
                    "Your transaction of amount GHS ${widget.paymentamount} for ${widget.name} with ID ${widget.code} is successful.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.25,
                      color: Colors.black,
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ),
                ],
              ),
            ),
              ),
            ),


          ],
        ),



      ),
      bottomSheet:FlatButton(
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
        onPressed: (){
          Navigator.push (
            context,
            MaterialPageRoute(
                builder: (context) => MainPage()),
          );
        },
        child: buildTextButton("Done", Palette.activeColor),

      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  TextButton buildTextButton(String title, Color backgroundColor) {
    return TextButton(
        onPressed: (){
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => MainPage()),
                  (route) => false);
        },
        style: TextButton.styleFrom(
            side: BorderSide(width: 1, color: Colors.grey),
            minimumSize: Size(165, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            primary: Colors.white,
            backgroundColor: backgroundColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
            ),
          ],
        )
    );
  }
}

