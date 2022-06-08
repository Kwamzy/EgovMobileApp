import 'package:egovservice/HomePage.dart';
import 'package:egovservice/config/palette.dart';
import 'package:egovservice/list_of_customers.dart';
import 'package:egovservice/pages/map_page.dart';
import 'package:egovservice/pages/more_services.dart';
import 'package:egovservice/pages/payment_page.dart';
import 'package:egovservice/pages/notification_page.dart';
import 'package:egovservice/pages/searchwidget.dart';
import 'package:egovservice/payment_pack/select_customer_for_payment.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:egovservice/provider/myHomePageProvider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();

}


class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    Select_Customer_For_Payment(),
    MapPage(),
    // NotificationPage(),
    MoreServices()
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,

        selectedItemColor: Palette.activeColor,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        elevation: 15,
        items: [
          BottomNavigationBarItem(title: Text("HOME", style: TextStyle(fontSize: 14, fontFamily: "Roboto"),), icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(title: Text("PAYMENT", style: TextStyle(fontSize: 14, fontFamily: "Roboto")), icon: Icon(Icons.account_balance_wallet_outlined)),
          BottomNavigationBarItem(title: Text("MAP", style: TextStyle(fontSize: 14, fontFamily: "Roboto")), icon: Icon(Icons.location_on_outlined)),
          // BottomNavigationBarItem(title: Text("NOTIFICATION", style: TextStyle(fontSize: 14, fontFamily: "Roboto")), icon: Icon(Icons.notifications_none_outlined)),
          BottomNavigationBarItem(title: Text("MORE", style: TextStyle(fontSize: 14, fontFamily: "Roboto")), icon: Icon(Icons.more_horiz_outlined)),
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}