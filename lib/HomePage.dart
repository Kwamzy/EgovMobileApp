import 'package:egovservice/config/palette.dart';
import 'package:egovservice/list_of_customers.dart';
import 'package:egovservice/pages/add_customer.dart';
import 'package:egovservice/pages/more_services.dart';
import 'package:egovservice/pages/more_services_pack/legal.dart';
import 'package:egovservice/pages/payment_page.dart';
import 'package:egovservice/pages/notification_page.dart';
import 'package:egovservice/pages/profile_page.dart';
import 'package:egovservice/pages/searchwidget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:egovservice/provider/myHomePageProvider.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}


class _HomePageState extends State<HomePage> {


  int choiceIndex = 0;

  Map<String, double> dataMap = {
    "Paid": 30,
    "Outstanding": 74
  };

  List<Color> colorList = [
    Palette.activeColor,
    Palette.secondaryActive
  ];

  

  @override
  Widget build(BuildContext context) {

    Color getColor(String status){
      if(status == "Paid"){
        return Colors.green;
      }else {
        return Colors.amber;
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,

      appBar:
      AppBar(
        centerTitle: true,
        backgroundColor: Palette.activeColor,
        elevation: 0,
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          padding: EdgeInsets.only(left: 20.0,top: 0.0, right: 0.0, bottom: 0.0),
          icon: CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_pic2.png"),
          ), onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profile_Page(),
                )
            );
          print("This should send you to the profile page");
        },
        ),
        title: Image.asset(
          "assets/images/egov_white.png",
          fit: BoxFit.contain,
          height: 32,
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

      body:Container(
      color: Palette.backgroundColor,


      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(



              child: Column(
                children: [

                  Stack(
                    children: [

                      Container(
                        color: Colors.white,
                        height: 350,
                      ),

                      Container(
                        color: Palette.activeColor,
                        height: 220,
                      ),

              Container(
                child: Column(
                      children: [
                       Container(
                        margin: EdgeInsets.only(left: 20, top: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Hello!",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Evans Mensah",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),

                      ),
                      SizedBox(height: 25,),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 0,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: new BorderRadius.all(
                                const Radius.circular(8.0)
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 6,
                                  spreadRadius: 2
                              ),
                            ]
                        ),

                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                  child: Text(
                                    "Agent Details",
                                    textAlign: TextAlign.left ,
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                  ),
                                  ),
                                    ),

                                    SizedBox(height: 15,),

                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: PieChart(
                                        dataMap: dataMap,
                                      colorList: colorList,
                                      chartRadius: MediaQuery.of(context).size.width / 4,
                                        centerText: "Customers",
                                        chartLegendSpacing: 30.0,
                                        chartType: ChartType.ring,
                                        ringStrokeWidth: 15,
                                        animationDuration: Duration(seconds: 2),
                                        chartValuesOptions: ChartValuesOptions(
                                          showChartValues: true,
                                          decimalPlaces: 0,
                                          showChartValuesOutside: true,
                                          showChartValueBackground: false,
                                          showChartValuesInPercentage: true,
                                        ),
                                          legendOptions:
                                          LegendOptions(
                                              showLegends: true,
                                                  legendPosition: LegendPosition.bottom,
                                            showLegendsInRow: true,
                                          ),
                                      ),
                                    ),
                                  ],
                                ),
                            ),
                            Flexible(
                              flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 30,),
                                    RichText(
                                        text:
                                    TextSpan(
                                        text: "Agent Code:",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black87,

                                        ),
                                        children: [
                                          TextSpan(
                                              text: "\n"
                                          ),
                                          TextSpan(
                                              text: "GH89434",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                              ))
                                        ]
                                    )
                                    ),

                                    SizedBox(height: 15,),

                                    RichText(
                                        text:
                                        TextSpan(
                                            text: "Zone:",
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black87,

                                            ),
                                            children: [
                                              TextSpan(
                                                  text: "\n"
                                              ),
                                              TextSpan(
                                                  text: "Greater Accra, Labone Municipal, Area 52.",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ))
                                            ]
                                        )
                                    ),

                                    SizedBox(height: 15,),

                                    RichText(
                                        text:
                                        TextSpan(
                                            text: "No. of Merchants:",
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black87,

                                            ),
                                            children: [
                                              TextSpan(
                                                  text: "\n"
                                              ),

                                              TextSpan(
                                                  text: "104",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ))
                                            ]
                                        )
                                    ),

                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                  ],
                ),
              ),
            ],
                  ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[

                          Text(
                            "Recent Activities",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),


                          InkWell(
                            child: Text(
                              "+Add Customer",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Palette.activeColor,
                              ),
                            ),
                              onTap:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute
                                    (builder: (context) => Add_Customer()
                                  )
                              );
                              print("Agent is about to add a customer");
                              },
                          ),


                        ]
                    ),


                  ),

                  Container(

                  ),
                ],
              ),


            ),

            Container(
              padding: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
              color: Colors.white,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // itemBuilder: (_,int index)=>listDataItem(this.listof[index]),
                  // itemCount: this.listof.length,
                  itemCount: customerList.length,
                  itemBuilder: (context, index) {
                    Customer_list customer_list = customerList[index];
                    return Container(

                      child: Card(
                      elevation: 0,
                        child: ListTile(
                            title: Text(customer_list.name_of_customer),
                            subtitle: RichText(text:
                            TextSpan(
                                text: customer_list.customer_number.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,

                                ),
                                children: [
                                  TextSpan(
                                      text: "\n"
                                  ),
                                  TextSpan(
                                      text: customer_list.customer_code,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ))
                                ]
                            )
                            ),
                            leading: Card(
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    customer_list.name_of_customer[0]
                                        .toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              shadowColor: Colors.black45,
                              color: Colors.white,
                              elevation: 2,

                            ),
                            trailing: RichText(text:
                            TextSpan(
                                text: customer_list.amount,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                children: [
                                TextSpan(
                                text: "\n"
                            ),
                                TextSpan(
                                  text: customer_list.status,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: getColor(customer_list.status),
                                ))
                            ]
                        )
                            ),
                        ),
                      ),
                    );
                  }
              ),
            ),

      ],
              ),
            ),
          ],

        ),
      ),
      ),

    );
  }
}

// MaterialStateProperty<Color> getColor(Color paid, Color outstanding) {
//   final getColor = (Set<MaterialState> states){
//     if (states.contains("Paid")){
//       return paid;
//     } else {
//       return outstanding;
//     }
//   };
//
//   return MaterialStateProperty.resolveWith(getColor);
// }


// class listDataItem extends StatelessWidget{
//
//   String itemName;
//   listDataItem(this.itemName);
//
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       color: Colors.white,
//       margin: EdgeInsets.all(10.0),
//         padding: EdgeInsets.all(6.0),
//         child: new Row(
//           children: <Widget>[
//
//             new CircleAvatar(
//               child: new Text(
//                   itemName[0].toUpperCase(),
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               backgroundColor: Palette.textColor1,
//               radius: 20,
//
//             ),
//             Divider(height: 5, thickness: 5,),
//             new Padding(padding: EdgeInsets.all(8.0)),
//             new Text(itemName, style: TextStyle(fontSize: 20.0),),
//
//
//           ],
//         ),
//     );
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }

