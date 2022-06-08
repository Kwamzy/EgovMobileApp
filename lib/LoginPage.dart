import 'package:egovservice/HomePage.dart';
import 'package:egovservice/config/palette.dart';
import 'package:egovservice/forgot_password.dart';
import 'package:egovservice/main_page.dart';
import 'package:egovservice/test_login.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

  }

class _LoginPageState extends State<LoginPage> {

  final formkey = GlobalKey<FormState>();
  final globalKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _agent_code = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
          "assets/images/egov_white.png",
              fit: BoxFit.contain,
              height: 32,
        ),
          ],
      ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
    ),
      backgroundColor: Palette.backgroundColor,
      body: Container(
        color: Colors.white,
        child: Stack (
        children: <Widget>[
          Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/accrapic.png"),
                fit: BoxFit.fill
              )
            ),
            child: Container(
              color: Colors.blueGrey.withOpacity(.30),

                  )
                ),


                ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,

                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0)
                ),
              ),
              child: Stack(

                children: <Widget>[

                  Positioned(
                    top: 110,
                    bottom: 0,
                    right: 0,
                    left: 0,

                    child: Align(
                      alignment: Alignment(0,-1),
                      child: SingleChildScrollView(
                        reverse: true,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(30),
                            width: MediaQuery.of(context).size.width - 0,
                            margin: EdgeInsets.only(top: 100),
                            decoration: BoxDecoration(
                              color: Colors.white,

                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(20.0),
                                topRight: const Radius.circular(20.0)
                            ),
                          //     boxShadow: [
                          //       BoxShadow(
                          //       color: Colors.black.withOpacity(0.3),
                          //       blurRadius: 15,
                          //         spreadRadius: 5
                          //     ),
                          // ]
                            ),

                              child: Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                  Column(
                                    children: [
                                    Text("Welcome!", style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      color: Palette.activeColor,
                                    ),
                                    )
                                  ],
                                  )
                                ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                Text("Sign into your agent profile",
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  color: Palette.textColor1,
                                ),
                                ),
                                ],
                          ),
                                Container(
                                  margin: EdgeInsets.only(top: 30,),

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
                                      labelText: "Agent Code",
                                      hintText: "Enter Agent Code",
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
                                      onSaved: (value) => _agent_code  = value as TextEditingController,

                                    ),

                                      SizedBox(height: 20.0,),

                                      TextFormField(
                                        obscureText: isPassword,
                                        controller: _password,
                                        decoration: InputDecoration(
                                          suffixIcon: InkWell(
                                            onTap: _togglePasswordView,
                                            child: Icon(
                                              Icons.visibility,
                                              color: Palette.textColor2,
                                            ),
                                          ),
                                          labelText: "Password",
                                          hintText: "Enter Password",
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
                                        onSaved: (value) => _password = value as TextEditingController,

                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [

                                          Container(
                                            padding: EdgeInsets.only(top: 10, bottom: 30),
                                            child: Column(
                                              children: [
                                                InkWell(
                                                  onTap:(){
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => Forgot_Password()));
                                                    print("You have tapped Forgot Password");
                                                  },
                                                  child: Text(
                                                      "Forgot password?",
                                                      style: TextStyle(
                                                          decoration: TextDecoration.underline,
                                                        color: Colors.blue,
                                                      ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),


                                  ],),
                                ),
                                ),

                                Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
                              ],
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
          ),


      Positioned (
        bottom: 0.0,
        child: (
        Column(
          children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            width: MediaQuery.of(context).size.width - 0,
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: Column(

          children: [
                TextButton(
                onPressed: ()
          {
          if (formkey.currentState!.validate()){
          Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => MainPage()),
          (route) => false);
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
                "Login",
              ),
            ],
          )
      ),
          ],

            ),
          ),

          ],

        )
        )

          ),


      ],
      ),
      ),
    );



  }

  void _togglePasswordView() {
    // if (isPassword == true){
    //   isPassword = false;
    // } else {
    //   isPassword = true;
    // }

    setState(() {
      isPassword = !isPassword;
    });
  }

  // TextButton buildTextButton(String title, Color backgroundColor) {
  //   return TextButton(
  //             onPressed: (){
  //               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
  //             },
  //             style: TextButton.styleFrom(
  //               side: BorderSide(width: 1, color: Colors.grey),
  //               minimumSize: Size(165, 50),
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(8)
  //               ),
  //               primary: Colors.white,
  //               backgroundColor: backgroundColor
  //             ),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(
  //                   title,
  //                   ),
  //               ],
  //             )
  //         );
  // }

  // Widget buildTextField
  //     (IconData icon, String hintext, String labelText, bool isPassword) {
  //
  //
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 30.0),
  //   child: TextField(
  //     obscureText: isPassword,
  //                   decoration: InputDecoration(
  //                     suffixIcon: InkWell(
  //                       onTap: _togglePasswordView,
  //                       child: Icon(
  //                         Icons.visibility,
  //                         color: Palette.textColor2,
  //                       ),
  //                     ),
  //                     labelText: labelText,
  //                     hintText: hintext,
  //                     hintStyle:  TextStyle(
  //                       fontSize: 14,
  //                       color: Palette.textColor2
  //                     ),
  //                     ),
  //   ),
  //   );
  // }


}




