import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapPage extends StatelessWidget{
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: Text(
          "Locate a Customer",
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