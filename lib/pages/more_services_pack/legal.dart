import 'package:egovservice/config/palette.dart';
import 'package:egovservice/pages/more_services_pack/change_password_1.dart';
import 'package:egovservice/pages/more_services_pack/privacy_policy.dart';
import 'package:egovservice/pages/more_services_pack/reset_password_1.dart';
import 'package:egovservice/pages/more_services_pack/terms_and_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Legal extends StatelessWidget{
  const Legal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.2,
        leading: BackButton(
          color: Palette.activeColor,
          onPressed: (){
            Navigator.of(context).maybePop();
          },
        ),
        title: Text(
          "Legal",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 10.0),
        child: Column(

            children: <Widget>[
        Container(
        padding: EdgeInsets.only(left: 10.0, right: 0, top: 10.0),
        child: ListTile(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Terms_and_Conditions(),
                )
            );
          },
          leading: Icon(Icons.security_update_good_outlined,
            size: 30.0,
            color: Palette.activeColor,),
          horizontalTitleGap: 8.0,
          title: Text("Terms and Conditions",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: "Roboto",
            ),
          ),
          trailing: Icon(Icons.chevron_right_outlined),
        ),
      ),
      Divider(
        thickness: 0.6,
        color: Colors.black12,),

      Container(
        padding: EdgeInsets.only(left: 10.0, right: 0, top: 10.0),
        child: ListTile(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Privacy_Policy(),
                )
            );
          },
          leading: Icon(Icons.privacy_tip_outlined,
            size: 30.0,
            color: Palette.activeColor,),
          horizontalTitleGap: 8.0,
          title: Text("Privacy Policy",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: "Roboto",
            ),
          ),
          trailing: Icon(Icons.chevron_right_outlined),
        ),
      ),
      Divider(
        thickness: 0.6,
        color: Colors.black12,
      ),

          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}