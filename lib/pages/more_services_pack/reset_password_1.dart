import 'package:egovservice/config/palette.dart';
import 'package:egovservice/pages/more_services_pack/verify_number.dart';
import 'package:egovservice/payment_pack/select_customer_for_payment.dart';
import 'package:egovservice/success_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reset_Password extends StatefulWidget {
  @override
  _Reset_PasswordState createState() => _Reset_PasswordState();

}

class _Reset_PasswordState extends State<Reset_Password>{


  bool isPassword = true;
  final formkey = GlobalKey<FormState>();

  TextEditingController _new_password = new TextEditingController();
  TextEditingController _confirm_password = new TextEditingController();

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Are you sure you want to go back?"),
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
              "Set a New Password",
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
                controller: _new_password,
                obscureText: isPassword,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          Icons.visibility,
                          color: Palette.textColor2,
                        ),
                      ),
                      labelText: "Enter New Password",
                      hintText: "At least 6 characters and (@,#,,%, etc) ",
                      hintStyle:  TextStyle(
                          fontSize: 14,
                          color: Palette.textColor2
                      ),
                    ),

                validator: (value){
                  if (value!.isEmpty ){
                    return "Enter a password";
                  } else if (value.length > 6 && !RegExp(r'^[a-zA-Z0-9_-]{6,18}$').hasMatch(value)) {
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
                  controller: _confirm_password,
                  obscureText: isPassword,
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
                      print("The value typed is " + value + " and the new password is " + _new_password.text.toString() );
                      return "Password is not the same!!";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) => _confirm_password = value as TextEditingController,

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
                onPressed: ()
                {
                  if (formkey.currentState!.validate()){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SuccessPage())
                    );

                  } else {
                    // final snackBar = SnackBar(content: Text("Submitting form"));
                    // _scaffoldKey.currentState!.showSnackBar(snackBar);
                    return;
                  }
                },
                style: TextButton.styleFrom(
                    side: BorderSide(width: 1, color: Colors.grey),
                    minimumSize: Size(165, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    primary: Colors.white,
                    backgroundColor: Palette.activeColor
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
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Verify_Number()),
                  );
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
