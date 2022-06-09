import 'package:egovservice/config/palette.dart';
import 'package:egovservice/payment_pack/select_customer_for_payment.dart';
import 'package:egovservice/success_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Change_Password extends StatefulWidget {
  @override
  _Change_PasswordState createState() => _Change_PasswordState();

}

class _Change_PasswordState extends State<Change_Password>{

  final formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _old_password = new TextEditingController();
  TextEditingController _new_password = new TextEditingController();
  TextEditingController _confirm_new_password = new TextEditingController();

  String new_password = "";


  bool isPassword = true;

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Are you sure you want to cancel your changes?"),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text ("No",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 18,
                ),),
            style: ButtonStyle(
            ),
          ),
          TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text("Yes",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 18,
              ),
              ))
        ],
      )
  );

  @override
  Widget build(BuildContext context) => WillPopScope (
    onWillPop: () async {
      print("Back Button pressed!");

        final shouldPop = await showWarning(context);

        return shouldPop ?? false;

    },
    child: Scaffold(
      backgroundColor: Colors.white,
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

      ),

      body: Container(
        child: Column(

          children: <Widget>[

        Container(
        padding: EdgeInsets.only(left: 30, right: 30,),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5,),

          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            Text(
              "Change Password",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  color: Colors.black
              ),
            ),
            ],
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Provide a new password for logging \ninto your profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: Colors.black
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(top: 40, bottom: 40),

              child: Form(
                key: formkey,

        child: Column(
          children: [

            TextFormField(
              obscureText: isPassword,
                  controller: _old_password,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                        Icons.visibility,
                        color: Palette.textColor2,
                      ),
                    ),
                    labelText: "Old Password",
                    hintText: "Enter Old Password",
                    hintStyle:  TextStyle(
                        fontSize: 14,
                        color: Palette.textColor2
                    ),
                  ),

              validator: (value){
                if (value!.isEmpty ){
                  return "Enter password";
                  // } else if (!RegExp(r'^[a-z0-9_-]{6,18}$').hasMatch(value)){
                  // return "Enter a correct password format";
                } else if (value != "Nana") {
                  return "You have entered the wrong password!!";
                } else {
                  return null;
                }
              },
              onSaved: (value) => _old_password = value as TextEditingController,

                ),

            SizedBox(height: 20,),

            TextFormField(
              obscureText: isPassword,
              controller: _new_password,
              decoration: InputDecoration(

                labelText: "Enter New Password",
                hintText: "At least 6 characters and (@,#,,%, etc)",
                hintStyle:  TextStyle(
                    fontSize: 14,
                    color: Palette.textColor2
                ),
              ),

              validator: (value){
                if (value!.isEmpty ){
                  return "Enter a password";
                  } else if (value.length > 6 && !RegExp(r'^[a-z0-9_-]{6,18}$').hasMatch(value)) {
                  return "Must include a special character (e.g @,#,%,/)";
                } else if (value.length < 6) {
                  return "Must be at least 6 characters";
                } else if (value == "Nana") {
                  return "You cannot use the same password!!";
                } else {
                  return null;
                }
              },
              onSaved: (value) => _new_password = value as TextEditingController,


            ),

            SizedBox(height: 20,),

              TextFormField(
                obscureText: isPassword,
                controller: _confirm_new_password,
                decoration: InputDecoration(
                  labelText: "Confirm New Password",
                  hintText: "Confirm New Password",
                  hintStyle:  TextStyle(
                      fontSize: 14,
                      color: Palette.textColor2
                  ),
                ),

                validator: (value){
                  if (value!.isEmpty ){
                    return "Enter a password";
                  // } else if ( !RegExp(r'^[a-z0-9_-]{6,18}$').hasMatch(value)){
                  //   return "Must include a special character (e.g @,#,%,/)";
                  } else if (value != _new_password.text) {
                    print("The value typed is " + value + " and the new password is " + _new_password.toString() );
                    return "Password is not the same!!";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) => _confirm_new_password = value as TextEditingController,

              ),
      ],
              ),
            ),
            ),

          ],

        ),
      ),

      ],

    ),
  ),

      bottomSheet:FlatButton(
        color: Colors.white,
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
        onPressed: (){
          Navigator.push (
              context,
              MaterialPageRoute(
                  builder: (context) => SuccessPage()),
                  );
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
                      builder: (context) =>
                          SuccessPage()
                          // Payment_SuccessPage(
                          //   name: widget.name,
                          //   status: widget.status,
                          //   number: widget.number,
                          //   amount: widget.amount,
                          //   code: widget.code,
                          //   paymentamount: _payment_amount.text,
                          //   payment_mobileno: _payment_mobile_no.text,
                          // )
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
                  "Submit",
                ),
              ],
            )
        ),

      ),
    )

    );
    // // TODO: implement build
    // throw UnimplementedError();

  void _togglePasswordView() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  TextButton buildTextButton(String title, Color backgroundColor) {
    return TextButton(
        onPressed: (){
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => SuccessPage()),
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
