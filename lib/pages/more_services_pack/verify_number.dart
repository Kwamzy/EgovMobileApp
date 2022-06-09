import 'package:egovservice/config/palette.dart';
import 'package:egovservice/pages/more_services_pack/reset_password_1.dart';
import 'package:egovservice/success_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class Verify_Number extends StatefulWidget {
  @override
  _Verify_NumberState createState() => _Verify_NumberState();

}

class _Verify_NumberState extends State<Verify_Number>{

  final String requiredNumber = "123456";
  final formkey = GlobalKey<FormState>();
  TextEditingController _otp = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.2,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Palette.activeColor,
          ),
          onPressed: (){
            Navigator.of(context).maybePop();
          },
        ),
        title: Text(
          "Verify number",
          style: TextStyle(
            fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Form(
          key: formkey,

          child: Column(
            children: <Widget>[
              Text(
                "Kindly enter the verification code sent to: \n" + "+23355812348",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto",
                ),
              ),
              SizedBox(height: 40,),

              PinCodeTextField(
                controller: _otp,
                keyboardType: TextInputType.number,
                  obscureText: true,
                  enablePinAutofill: true,
                  // enableActiveFill: false,
                  appContext: context,
                  length: 6,
                  onChanged: (value){
                    print(value);
                  },
                pinTheme: PinTheme(
                  inactiveColor: Palette.textColor2,
                  errorBorderColor: Colors.red,
                ),
                validator: (value){
                  if (value!.isEmpty ){
                    print("Enter OTP here");
                    return "Enter OTP here";

                  } else if (value != requiredNumber) {
                    print("The OTP");
                    return "Enter OTP here";
                  }
                },

                onCompleted: (value){
                    if (value == requiredNumber){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => Reset_Password()),
                      );

                      print("Valid PIN");
                    } else{

                      Colors.red;
                      print("Invid PIN");

                    }
                },
              )
            ],
          ),
        ),
      ),

      bottomSheet:FlatButton(
        color: Colors.white,
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
        onPressed: (){
          // Navigator.push (
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => Reset_Password()),
          // );
        },
        child:
        // buildTextButton("Continue", Palette.activeColor),

    TextButton(
    onPressed: (){
    if (formkey.currentState!.validate()){
    // final snackBar = SnackBar(content: Text("Submitting form"));
    // _scaffoldKey.currentState!.showSnackBar(snackBar);
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Reset_Password()
    ),
    );
    } else {
      return;
    }

    },
        style: TextButton.styleFrom(
          side: BorderSide(width: 1, color: Palette.activeColor),
          minimumSize: Size(165, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          primary: Colors.white,
          backgroundColor: Palette.activeColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Continue",
            ),
          ],
        )
    ),
      ),

    );
    // TODO: implement build
    throw UnimplementedError();
  }

  // TextButton buildTextButton(String title, Color backgroundColor) {
  //   return TextButton(
  //       onPressed: (){
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => SuccessPage()),
  //         );
  //       },
  //       style: TextButton.styleFrom(
  //           side: BorderSide(width: 1, color: Colors.grey),
  //           minimumSize: Size(165, 50),
  //           shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(8)
  //           ),
  //           primary: Colors.white,
  //           backgroundColor: backgroundColor
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text(
  //             title,
  //           ),
  //         ],
  //       )
  //   );
  // }

}