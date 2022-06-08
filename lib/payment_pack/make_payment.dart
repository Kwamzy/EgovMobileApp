import 'package:egovservice/config/palette.dart';
import 'package:egovservice/payment_pack/payment_success_page.dart';
import 'package:egovservice/success_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Make_PaymentPage extends StatefulWidget {
  @override
  _Make_PaymentPageState createState() => _Make_PaymentPageState();

  final String name, code, number, status, amount;

  Make_PaymentPage({
    required this.name,
    required this.code,
    required this.number,
    required this.status,
    required this.amount,
  });

}

class _Make_PaymentPageState extends State<Make_PaymentPage>{

  final formkey = GlobalKey<FormState>();

  final items = ["MTN Mobile Money", "Vodafone Cash" , "AirtelTigo Money"];
  String? value;

  TextEditingController _payment_method = new TextEditingController();
  TextEditingController _payment_mobile_no = new TextEditingController();
  TextEditingController _payment_amount = new TextEditingController();
  TextEditingController _customercode = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Palette.activeColor,
          onPressed: (){
            Navigator.of(context).maybePop();
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.2,
        title: Text(
          "Make Payment",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        color: Colors.white,

        child: SingleChildScrollView(

          child: Form(
            key: formkey,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

        Container(

        padding: EdgeInsets.only(top: 25, bottom: 0),

          child: RichText(
              text:
              TextSpan(
                  text: "Customer Name",
                  style: TextStyle(
                      color: Palette.activeColor,
                      fontSize: 12,
                      fontFamily: "Roboto"

                  ),
                  children: [
                    TextSpan(
                        text: "\n"
                    ),
                    TextSpan(
                        text: "\n"
                    ),
                    TextSpan(
                        text: widget.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ))
                  ]
              )
          ),

      ),

      SizedBox(height: 15,),
      Divider(thickness: 1.5,),

            SizedBox(height: 15,),

      Container(
            child: RichText(

                text:
                TextSpan(
                    text: "Customer Code",
                    style: TextStyle(
                        color: Palette.activeColor,
                        fontSize: 12,
                        fontFamily: "Roboto"

                    ),
                    children: [
                      TextSpan(
                          text: "\n",
                        style: TextStyle(
                        ),
                      ),
                      TextSpan(
                        text: "\n",
                        style: TextStyle(
                        ),
                      ),
                      TextSpan(
                          text: widget.code,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ))
                    ]
                )
            ),
      ),

            SizedBox(height: 15,),
            Divider(thickness: 1.5,),

            SizedBox(height: 15,),

             DropdownButtonFormField<String>(
               value: value,
                isExpanded: true,
                items: items.map(buildMenuItem).toList(),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10, bottom: 20),
                  labelText: "Choose Payment Method",
                  labelStyle: TextStyle(
                    color: Palette.activeColor
                  ),

                ),
               validator: (value) => value == null ? 'Select a Payment Method' : null,
               onChanged: (value) => setState(() => this.value = value),

              ),

            SizedBox(height: 15,),

            TextFormField(
              enabled: true,
              controller: _payment_mobile_no,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Palette.activeColor,
                focusColor: Palette.activeColor,
                contentPadding: EdgeInsets.only(top: 10, bottom: 20),
                labelText: "Enter Mobile Number",
                hintText: "Enter a Mobile Number",

              ),
              validator: (value){
                if (value!.isEmpty ||!RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value) ){
                  return "Enter a Phone Number (e.g 0244040404)";
                } else {
                  return null;
                }
              },
              onSaved: (value) => _payment_mobile_no = value as TextEditingController,

            ),

            SizedBox(height: 15,),

            TextFormField(
              keyboardType: TextInputType.number,
              controller: _payment_amount,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10, bottom: 20),
                labelText: "Enter Amount",
                hintText: "Enter an amount",

              ),

              validator: (value){
                if (value!.isEmpty || int.parse(value) <= 0 ){
                  return "Enter an Amount";
                } else {
                  return null;
                }
              },
              onSaved: (value) => _payment_amount = value?.replaceFirst(RegExp(r'^0+'), '') as TextEditingController,

            ),


          ],
        ),
        ),
      ),
      ),

      bottomSheet: BottomSheet(
        backgroundColor: Colors.white,
        elevation: 0,
        builder: (BuildContext ctx) => Container(
          child: FlatButton(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            onPressed: (){
              // if (formkey.currentState!.validate()){
              //   final snackBar = SnackBar(content: Text("Submitting form"));
              //   _scaffoldKey.currentState!.showSnackBar(snackBar);
              // }
              // Navigator.push (
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => Payment_SuccessPage(
              //         name: widget.name,
              //         status: widget.status,
              //         number: widget.number,
              //         amount: widget.amount,
              //         code: widget.code,
              //         paymentamount: _payment_amount.text,
              //         payment_mobileno: _payment_mobile_no.text,
              //       )),
              // );
            },
            child:
            // buildTextButton("Submit", Palette.activeColor),
              TextButton(
                  onPressed: (){
                    if (formkey.currentState!.validate()){
                      // final snackBar = SnackBar(content: Text("Submitting form"));
                      // _scaffoldKey.currentState!.showSnackBar(snackBar);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Payment_SuccessPage(
                                  name: widget.name,
                                  status: widget.status,
                                  number: widget.number,
                                  amount: widget.amount,
                                  code: widget.code,
                                  paymentamount: _payment_amount.text,
                                  payment_mobileno: _payment_mobile_no.text,

                                )),
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
                        "Submit",
                      ),
                    ],
                  )
              ),

          ),
        ), onClosing: () {  },
      ),


    );
    // TODO: implement build
    throw UnimplementedError();
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(
        fontFamily: "Roboto",
        fontWeight: FontWeight.w500,
        fontSize: 16
      ),
    ),
  );

  //
}