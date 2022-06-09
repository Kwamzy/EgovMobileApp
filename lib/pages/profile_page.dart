import 'dart:io';

import 'package:egovservice/config/palette.dart';
import 'package:egovservice/config/property_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Profile_Page extends StatefulWidget {
  @override
  _Profile_PageState createState() => _Profile_PageState();

}

class _Profile_PageState extends State<Profile_Page>{
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print ("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
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
      elevation: 0.2,
      title: Text(
        "Profile",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            color: Colors.black
        ),
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.logout,
          color: Palette.activeColor,
        ),
          onPressed: (){},
        )

      ],
    ),
  body: Container(
    padding: EdgeInsets.only(left: 30, right: 30, top: 20,),
    child: GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: ListView(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Theme.of(context).scaffoldBackgroundColor
                    ),
                    boxShadow: [
                      BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 10,
                      color: Colors.black26.withOpacity(0.1),
                        offset: Offset(0, 10),
                    ),
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                      // image != null ?
                      // Image.file(
                      //   image!,
                      //   height: 160,
                      //   width: 160,):
                      AssetImage("assets/images/profile_pic1.png"),

                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        color: Palette.activeColor,
                      ),
                      child: Icon(
                        Icons.edit,
                      color: Colors.white,
                      ),
                    ),
                ),

              ],
            ),
          ),

          SizedBox(height: 20,),

          Center(
            child:
            RichText(
                text:
                TextSpan(
                    text: "Evans Mensah",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Roboto",
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),

                    children: [
                      TextSpan(
                          text: "\n"
                      ),

                      TextSpan(
                          text: "233298392803",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          )
                      ),

                      TextSpan(
                          text: "\n"
                      ),

                      TextSpan(
                          text: "GH89434",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          )
                      ),
                    ]
                ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 25,),

          TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: "Agent Name",
              labelStyle: TextStyle(
                fontFamily: "Roboto",
                color: Palette.activeColor,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: "Evans Mensah",
              hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(height: 20,),

          TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: "Phone Number",
              labelStyle: TextStyle(
                fontFamily: "Roboto",
                color: Palette.activeColor,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: "233298392803",
              hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(height: 20,),

          TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: "Date of Birth",
              labelStyle: TextStyle(
                fontFamily: "Roboto",
                color: Palette.activeColor,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: "24th December 1999",
              hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(height: 20,),

          TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: "Agent's Zone",
              labelStyle: TextStyle(
                fontFamily: "Roboto",
                color: Palette.activeColor,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: "Greater Accra, Labone Municipal, Area 52.",
              hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(height: 20,),

          TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: "Agent Code",
              labelStyle: TextStyle(
                fontFamily: "Roboto",
                color: Palette.activeColor,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: "GH89434",
              hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(height: 40,),

          Image.asset(
            "assets/images/egov_logo.png",
            fit: BoxFit.contain,
            height: 32,
          ),

          // Center(
              Text(
              Property_file.version_name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 12,
              ),
              )


        ],
      ),
    ),
  ),
  );
  // TODO: implement build
  throw UnimplementedError();
  }
}