
import 'package:egovservice/config/palette.dart';
import 'package:egovservice/payment_pack/make_payment.dart';
import 'package:egovservice/payment_pack/select_customer_for_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Confirm_Customer_Details extends StatefulWidget {
  @override
  _Confirm_Customer_DetailsState createState() => _Confirm_Customer_DetailsState();

  final String name, code, number, status, amount;

  Confirm_Customer_Details({
    required this.name,
    required this.code,
    required this.number,
    required this.status,
    required this.amount,
  });

}

class _Confirm_Customer_DetailsState extends State<Confirm_Customer_Details>{

// class Confirm_Customer_Details extends StatelessWidget{



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

      appBar: AppBar(
        leading: BackButton(
          color: Palette.activeColor,
          onPressed: (){
            Navigator.of(context).maybePop();
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.2,
        title: Text(
          "Payment",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto',
              color: Colors.black
          ),
        ),
      ),

      body: Container(
    color: Colors.white,


    child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(

              margin: EdgeInsets.only(left: 30,top: 25,),
              child: Text(
                  "Customer Name",
                style: TextStyle(
                  color: Palette.activeColor,
                  fontSize: 14,
                  fontFamily: "Roboto",
                ),
              ),

            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
              // child: Column(
              //   children: [
              //     Text("Name: ${name}" ),
              //     Text("Code: ${code}" ),
              //     Text("Code: ${number}" ),
              //     Text("Code: ${amount}" ),
              //     Text("Code: ${status}" ),
              //   ],
              // ),


                child: TextField(
                  enabled: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                        Icons.person_outline,
                      color: Palette.activeColor,
                    ),
                    labelText: widget.name,
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    hintText: widget.name,
                    hintStyle:  TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                    ),
                  ),

                ),
              ),

            Container(
              padding: EdgeInsets.only(left: 8, top: 15),
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 0,
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 370,
              decoration: BoxDecoration(
                  color: Palette.dashboardcard,

                  borderRadius: new BorderRadius.all(
                      const Radius.circular(8.0)
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.20),
                        blurRadius: 6,
                        spreadRadius: 1
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                child: Text(
                    "Payment Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                ),

               SizedBox(height: 10,),

               Container (
                 height: 38,
                 child: ListTile(
                title: Text(
                    "Name:",
                  style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                ),
                ),
                trailing: Text(
                  widget.name,
                  style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                ),
              ),
              ),
               ),

                Container(
                  height: 38,
                  child: ListTile(
                  title: Text(
                    "Contact:",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                    ),
                  ),
                  trailing: Text(
                    widget.number,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                ),

                Container(
                  height: 38,
                child: ListTile(
                  title: Text(
                    "Customer code:",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                    ),
                  ),
                  trailing: Text(
                    widget.code,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                ),


                Container(
                  height: 38,
                child: ListTile(
                  title: Text(
                    "Address:",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                    ),
                  ),
                  trailing: Text(
                    widget.status,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                ),

                Container(
                  height: 38,
                  child: ListTile(
                    title: Text(
                      "Payment amount:",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                      ),
                    ),
                    trailing: Text(
                      widget.amount,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 38,
                  child: ListTile(
                    title: Text(
                      "Payment due:",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                      ),
                    ),
                    trailing: Text(
                      widget.amount,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),


                Container(
                  height: 38,
                  child: ListTile(
                    title: Text(
                      "Payment status:",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                      ),
                    ),
                    trailing: Text(
                      widget.status,
                      style: TextStyle(
                        fontSize: 16,
                        color: getColor(widget.status),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),



              ],
              ),

              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
                // children: [
                //   Text(
                //     "Name: ${name}",
                //   style: TextStyle(
                //     fontSize: 18,
                //     fontFamily: "Roboto",
                //
                //   ),),
                //   SizedBox(height: 10,),
                //   Text("Code: ${code}" ),
                //   Text("Code: ${number}" ),
                //   Text("Code: ${amount}" ),
                //   Text("Code: ${status}" ),
                // ],
              // ),
            ),




          ],
        ),
      ),
      ),

      bottomSheet: BottomSheet(
        backgroundColor: Colors.white,
        elevation: 0,
        builder: (BuildContext ctx) => Container(
          child: FlatButton(
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
          onPressed: (){
            Navigator.push (
              context,
              MaterialPageRoute(
                  builder: (context) => Make_PaymentPage(
                    name: widget.name,
                    status: widget.status,
                    number: widget.number,
                    amount: widget.amount,
                    code: widget.code,
                  )),
            );
          },
          child: buildTextButton("Make Payment", Palette.activeColor),

      ),
        ), onClosing: () {  },
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  TextButton buildTextButton(String title, Color backgroundColor) {
    return TextButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Make_PaymentPage(
                    name: widget.name,
                    status: widget.status,
                    number: widget.number,
                    amount: widget.amount,
                    code: widget.code,
                  )),
                  );
        },
        style: TextButton.styleFrom(
            side: BorderSide(width: 1, color: Palette.activeColor),
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