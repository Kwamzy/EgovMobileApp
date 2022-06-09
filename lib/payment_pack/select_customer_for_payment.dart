import 'package:egovservice/config/palette.dart';
import 'package:egovservice/list_of_customers.dart';
import 'package:egovservice/pages/notification_page.dart';
import 'package:egovservice/pages/profile_page.dart';
import 'package:egovservice/pages/searchwidget.dart';
import 'package:egovservice/payment_pack/confirm_customer_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Select_Customer_For_Payment extends StatefulWidget {
  @override
  Select_Customer_For_PaymentState createState() => Select_Customer_For_PaymentState();
}

class Select_Customer_For_PaymentState extends State<Select_Customer_For_Payment> {
  late List<Customer_list> _customerList;
  String query = "";

  @override
  void initState() {
    super.initState();

    _customerList = customerList;
  }

  TextEditingController _customername = new TextEditingController();
  TextEditingController _customercode = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Palette.activeColor,
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
        title: Text(
          "Select a Customer",
          textScaleFactor: 0.9,
          style: TextStyle(
              fontWeight: FontWeight.w400,
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
        //   IconButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       icon: Icon(
        //           Icons.close_outlined,
        //         color: Colors.black,
        //       ))
        ],
      ),

      body: Column(
              children: <Widget>[
                SizedBox(height: 10,),

                buildSearch(),

          Expanded(

        child: ListView.builder(
          padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
            // physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            // itemBuilder: (_,int index)=>listDataItem(this.listof[index]),
            // itemCount: this.listof.length,
            itemCount: _customerList.length,
            itemBuilder: (context, index) {
             final customer_list = _customerList[index];

              return buildCustomerList(customer_list);
            }
        ),
      ),
        ],
        ),
      //   )
      // ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  Widget buildSearch() => SearchWidget(
    text: query,
    hintText: "Search by Customer Code",
    onChanged: searchCustomer,
  );

  void searchCustomer(String query) {
    final customers = customerList.where((customer_list) {
      // final customer_name = customer_list.name_of_customer.toLowerCase();
      final customer_code = customer_list.customer_code.toLowerCase();
      final searchLower = query.toLowerCase();

      return customer_code.contains(searchLower) ;
          // || customer_name.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this._customerList = customers;
    });

  }

  Widget buildCustomerList(Customer_list customer_list) => ListTile(
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Confirm_Customer_Details(
            name: customer_list.name_of_customer,
            code: customer_list.customer_code,
          amount: customer_list.amount,
          number: customer_list.customer_number.toString(),
          status: customer_list.status,)));
    },
    title: Text(
        customer_list.name_of_customer,
    ),
    subtitle:
      Text(customer_list.customer_code,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black45,
      ),
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
    trailing: Icon(
      Icons.chevron_right_outlined,
    ),

  );
}