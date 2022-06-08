// import 'package:egovservice/config/palette.dart';
// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class test_login extends StatefulWidget {
//   @override
//   _test_loginState createState() => _test_loginState();
//
// }
//
// class _test_loginState extends State<test_login> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//       //     Container(
//       //       padding: EdgeInsets.only(top: 0),
//       // child: Column(
//       //     children: <Widget>[
//             // Container(
//           // child:
//           //   Image.asset(
//           //     "assets/images/logo_1.png",
//           //     fit: BoxFit.contain,
//           //     height: 25,
//           // ),
//           //   ),
//
//         //   ],
//         // ),
//
//
//       // ),
//
//          Container(
//          child: Column(
//          children: <Widget>[
//          Container(
//            padding: EdgeInsets.all(0),
//           child: Column(
//                       children: <Widget>[
//                          Container(
//                             height: 240,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: AssetImage("assets/images/accrapic.png"),
//                                     fit: BoxFit.fill
//                                 )
//                             ),
//           ),
//
//                             Container(
//                               child: Column(
//                              children: <Widget>[
//                                Image.asset(
//                                  "assets/images/logo_1.png",
//                                  fit: BoxFit.contain,
//                                  height: 25,
//                                ),
//
//                               Container(
//                                 color: Palette.activeColor.withOpacity(.55),
//                               ),
//
//                             ]
//                         ),
//
//                          ),
//
//                         Container(
//                           margin: const EdgeInsets.all(
//                               0
//                           ),
//                           child: Column(
//                           children: <Widget>[
//                             Container(
//                           child: Text(
//                             "For the body men!!!!!!!!!!!"
//                           ),
//                             ),
//                           ],
//                           ),
//                         ),
//
//                         Container(
//                           child: Center(
//                             child: Text(
//                               "Login Button"
//                             ),
//                           ),
//                         )
//
//                       ],
//
//                     ),
//                 ),
//     ],
//               ),
//          ),
//     ],
//     ),
//
//
//     );
//
//
//
//
//   }
//   Widget buildTextField
//       (IconData icon, String hintext, bool isPassword) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 30.0),
//       child: TextField(
//         obscureText: isPassword,
//         decoration: InputDecoration(
//           suffixIcon: Icon(
//             icon,
//             color: Palette.textColor2,
//           ),
//           hintText: hintext,
//           hintStyle:  TextStyle(
//               fontSize: 14,
//               color: Palette.textColor2
//           ),
//         ),
//       ),
//     );
//   }
//
//   TextButton buildTextButton(String title, Color backgroundColor) {
//     return TextButton(
//         onPressed: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context) => test_login()));
//         },
//         style: TextButton.styleFrom(
//             side: BorderSide(width: 1, color: Colors.grey),
//             minimumSize: Size(165, 50),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8)
//             ),
//             primary: Colors.white,
//             backgroundColor: backgroundColor
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               title,
//             ),
//           ],
//         )
//     );
//   }
//
// }