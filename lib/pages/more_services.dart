import 'package:carbon_icons/carbon_icons.dart';
import 'package:egovservice/config/palette.dart';
import 'package:egovservice/pages/more_services_pack/change_password_1.dart';
import 'package:egovservice/pages/more_services_pack/contact_us.dart';
import 'package:egovservice/pages/more_services_pack/legal.dart';
import 'package:egovservice/pages/more_services_pack/reset_password_1.dart';
import 'package:egovservice/pages/notification_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';


class MoreServices extends StatelessWidget{
  const MoreServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Palette.activeColor,
        elevation: 0.1,
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          padding: EdgeInsets.only(left: 20.0,top: 0.0, right: 0.0, bottom: 0.0),
          icon: CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_pic2.png"),
          ), onPressed: () {
          print("This should send you to the profile page");
        },
        ),
        title: Text(
          "More Services",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              color: Colors.white
          ),
        ),
          actions: [
          IconButton(
          onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => NotificationPage(),
    )
    );
    },
        icon: Icon(Icons.notifications_none_outlined, color: Colors.white,))
    ],
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
                      builder: (context) => Change_Password(),
                  )
              );
            },
            leading: Icon(Icons.published_with_changes_outlined,
            size: 30.0,
            color: Palette.activeColor,),
            horizontalTitleGap: 8.0,
            title: Text("Change Password",
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

          // Container(
          //   padding: EdgeInsets.only(left: 10.0, right: 0, top: 10.0),
          //   child: ListTile(
          //     onTap: (){
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => Reset_Password(),
          //           )
          //       );
          //     },
          //     leading: Icon(Icons.restart_alt_outlined,
          //     size: 30.0,
          //     color: Palette.activeColor,),
          //     horizontalTitleGap: 8.0,
          //     title: Text("Reset Password",
          //       style: TextStyle(
          //         fontWeight: FontWeight.w500,
          //         fontSize: 16,
          //         fontFamily: "Roboto",
          //       ),
          //     ),
          //     trailing: Icon(Icons.chevron_right_outlined),
          //   ),
          // ),
          // Divider(
          //   thickness: 0.6,
          //   color: Colors.black12,),

          Container(
            padding: EdgeInsets.only(left: 10.0, right: 0, top: 10.0),
            child: ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Legal(),
                    )
                );
              },
              leading: Icon(Icons.policy_outlined,
              size: 30.0,
              color: Palette.activeColor,),
              horizontalTitleGap: 8.0,
              title: Text("Legal",
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
                      builder: (context) => Contact_Us(),
                    )
                );
              },
              leading: Icon(Icons.contact_phone_outlined,
              size: 30.0,
              color: Palette.activeColor,),
              horizontalTitleGap: 8.0,
              title: Text("Contact Us",
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
        ],
    ),
    ),

    );
    // TODO: implement build
    throw UnimplementedError();
  }
}