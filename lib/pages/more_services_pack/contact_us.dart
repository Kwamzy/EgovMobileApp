import 'package:egovservice/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact_Us extends StatelessWidget{
  const Contact_Us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.1,
        leading: BackButton(
          color: Palette.activeColor,
          onPressed: (){
            Navigator.of(context).maybePop();;
          },
        ),
        title: Text(
          "Contact Us",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              fontSize: 18,
              color: Colors.black
          ),
        ),
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Column(

              children: <Widget>[

          Container(
        padding: EdgeInsets.all(30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
            padding: EdgeInsets.only(left: 70, right: 70),
            child: Image(
              image: AssetImage("assets/images/egov_logo.png"),
            ),
            ),

            SizedBox(height: 20,),
            Divider(
              thickness: 1,
            color: Colors.black12,),

            SizedBox(height: 20,),

            Text(
              "Mission",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Palette.activeColor,
              ),
            ),

            SizedBox(height: 20,),

            Text(
              "Posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis consequat at eget orci. Mauris molestie sit amet metus mattis varius.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20,),
            Divider(
              thickness: 1,
              color: Colors.black12,),

            SizedBox(height: 20,),

            Text(
              "Vision",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Palette.activeColor,
              ),
            ),

            SizedBox(height: 20,),

            Text(
              "Posuere, rutrum eu ipsum. Aliquam eget odio sed ligula iaculis consequat at eget orci. Mauris molestie sit amet metus mattis varius.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20,),
            Divider(
              thickness: 1,
              color: Colors.black12,),

            SizedBox(height: 20,),

            Text(
              "Talk To Us",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Palette.activeColor,
              ),
            ),


          ],
        ),
      ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: Card(
                    child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Icon(
                          Icons.email_outlined,
                        color: Palette.activeColor,
                      ),

                    ),
                    ),
                        ),
                        title: RichText(text:
                        TextSpan(
                            text: "Email Us",
                            style: TextStyle(
                              fontSize: 12,
                              color: Palette.textColor2,

                            ),
                            children: [
                              TextSpan(
                                  text: "\n"
                              ),

                              TextSpan(
                                  text: "egovservice@gmail.com",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ))
                            ]
                        )
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 8,),

                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                child: Divider(
                  thickness: 1,
                  color: Colors.black12,),
                ),

                SizedBox(height: 8,),

                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: Card(
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Icon(
                                Icons.phone_in_talk_outlined,
                                color: Palette.activeColor,
                              ),

                            ),
                          ),
                        ),
                        title: RichText(text:
                        TextSpan(
                            text: "Call Us",
                            style: TextStyle(
                              fontSize: 12,
                              color: Palette.textColor2,

                            ),
                            children: [
                              TextSpan(
                                  text: "\n"
                              ),

                              TextSpan(
                                  text: "2334444444444",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ))
                            ]
                        )
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 8,),

                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(
                    thickness: 1,
                    color: Colors.black12,),
                ),

                SizedBox(height: 8,),

                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: Card(
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Icon(
                                Icons.language_outlined,
                                color: Palette.activeColor,
                              ),

                            ),
                          ),
                        ),
                        title: RichText(text:
                        TextSpan(
                            text: "Our Website",
                            style: TextStyle(
                              fontSize: 12,
                              color: Palette.textColor2,

                            ),
                            children: [
                              TextSpan(
                                  text: "\n"
                              ),

                              TextSpan(
                                  text: "www.egovservices.org",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  )),
                            ]
                        )
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),
        ],
      ),
    ),
    ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}