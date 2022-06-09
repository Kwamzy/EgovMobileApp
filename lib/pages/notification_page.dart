import 'package:egovservice/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget{
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_outlined,
          color: Palette.activeColor,
        ),
        onPressed: (){
          Navigator.of(context).maybePop();
        },
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.4,
      title: Text(
        "Notifications",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            color: Colors.black
        ),
      ),
    ),
  body: Container(
    alignment: Alignment.center,
  color: Colors.white,
  child: Column(
  children: <Widget>[
    Image(
    image: AssetImage("assets/images/P1gz.gif"),
  ),
    SizedBox(height: 20,),
    Text(
      "This page is still under construction",
      style: TextStyle(
        color: Colors.black,
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