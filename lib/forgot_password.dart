import 'package:egovservice/config/palette.dart';
import 'package:egovservice/pages/more_services_pack/verify_number.dart';
import 'package:egovservice/payment_pack/select_customer_for_payment.dart';
import 'package:egovservice/success_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgot_Password extends StatefulWidget {
  @override
  _Forgot_PasswordState createState() => _Forgot_PasswordState();

}

class _Forgot_PasswordState extends State<Forgot_Password>{

  bool isPassword = true;

  final formkey = GlobalKey<FormState>();
  final globalKey = GlobalKey();

  TextEditingController _agent_code = new TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                        "Forgot Password",
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
                        "We will text you a code to verify your \nmobile number registered with us",
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
                            onTap: ()async{
                              await Future.delayed(Duration(milliseconds: 500));
                              // RenderObject object = globalKey.currentContext.findRenderObject();
                              // object.showOnScreen();
                            },
                            controller:_agent_code,
                            decoration: InputDecoration(
                              labelText: "Enter Agent Code",
                              hintText: "Enter code here",
                              hintStyle:  TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor2
                              ),
                            ),

                            validator: (value){
                              if (value!.isEmpty ){
                                return "Enter agent code";
                              } if (value != "GH123") {
                                return "Agent code does not exist!!";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) => _agent_code = value as TextEditingController,

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
                builder: (context) => Verify_Number()),
          );
        },
        child: buildTextButton("Continue", Palette.activeColor),

      ),
    );
  }

    // );
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
          if (formkey.currentState!.validate()){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Verify_Number()),
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
