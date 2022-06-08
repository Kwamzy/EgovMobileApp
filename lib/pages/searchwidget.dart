import 'package:egovservice/config/palette.dart';
import 'package:egovservice/list_of_customers.dart';
import 'package:egovservice/pages/map_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget{

  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.hintText,
    required this.onChanged,
}): super(key: key);

  @override
  State<StatefulWidget> createState() => SearchWidgetState();

}

class SearchWidgetState extends State<SearchWidget>{

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black45);
    final styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      alignment: Alignment.center,
      height: 45,
      margin: const EdgeInsets.only(left: 28.0, right: 28.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black12,
        // border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),

      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style.color),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
            child: Icon(Icons.close, color: style.color),
            onTap: () {
              controller.clear();
              widget.onChanged('');
              FocusScope.of(context).requestFocus(FocusNode());
            },
          )
              : null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }


  // return Scaffold(
  //   backgroundColor: Colors.white,
  //
  //   appBar:
  //   AppBar(
  //       centerTitle: true,
  //       backgroundColor: Colors.white,
  //       elevation: 0,
  //       titleSpacing: 10,
  //       automaticallyImplyLeading: false,
  //       title: Container(
  //         margin: EdgeInsets.only(top: 40.0, bottom: 40.0),
  //         decoration: BoxDecoration(
  //           color: Palette.searchBar,
  //           borderRadius: BorderRadius.all(
  //               Radius.circular(20.0)
  //           ),
  //
  //         ),
  //         child: TextField(
  //       textAlignVertical: TextAlignVertical.center,
  //       controller: controller,
  //       onChanged: (text){
  //         setState(() {});
  //       },
  //       // onTap: ,
  //       keyboardType: TextInputType.text,
  //       decoration: InputDecoration(
  //           hintText: "Search for customer",
  //           border: InputBorder.none,
  //           isCollapsed: false,
  //           prefixIcon: const Icon(
  //             Icons.search_outlined,
  //             color: Palette.textColor3,
  //           ),
  //           suffixIcon: controller.text.length > 0
  //               ? IconButton(
  //               onPressed: (){
  //                 controller.clear();
  //                 setState(() {});
  //               },
  //               icon: Icon(
  //                   Icons.cancel,
  //                   color: Colors.grey
  //               )) :null
  //
  //       ),
  //     ),
  //   ),
  //
  //   ),

//     body: Container(
//
//       child: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//
//             Container(
//               color: Colors.white,
//               child: ListView.builder(
//                   physics: NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   // itemBuilder: (_,int index)=>listDataItem(this.listof[index]),
//                   // itemCount: this.listof.length,
//                   itemCount: customerList.length,
//                   itemBuilder: (context, index) {
//                     Customer_list customer_list = customerList[index];
//                     return Card(
//                       child: ListTile(
//                         title: Text(customer_list.name_of_customer),
//                         subtitle: RichText(text:
//                         TextSpan(
//                             text: customer_list.customer_number.toString(),
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.black45,
//
//                             ),
//                             children: [
//                               TextSpan(
//                                   text: "\n"
//                               ),
//                               TextSpan(
//                                   text: customer_list.customer_code,
//                                   style: TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.grey,
//                                   ))
//                             ]
//                         )
//                         ),
//                         leading: Card(
//                           child: SizedBox(
//                             width: 40,
//                             height: 40,
//                             child: Center(
//                               child: Text(
//                                 customer_list.name_of_customer[0]
//                                     .toUpperCase(),
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black),
//                               ),
//                             ),
//                           ),
//                           shadowColor: Colors.black45,
//                           color: Colors.white,
//                           elevation: 2,
//
//                         ),
//                         trailing: Icon(
//                             Icons.chevron_right_rounded
//                         ),
//
//                         ),
//                     );
//                   }
//               ),
//
//             ),
//           ],
//         ),
//       ),
//     ),
//
//   );
//   // TODO: implement build
//   throw UnimplementedError();
//   }
// }
//
// class CustomSearchDelegate extends SearchDelegate<String> {
//
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     //actions for app bar
//     return [
//       // TextButton(
//       //
//       //     onPressed: (){},
//       //     child: But
//       // )
//     ];
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     //leading icon on the app bar
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     //show some result based on selection
//     throw UnimplementedError();
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     //show when some searches for something
//     throw UnimplementedError();
//   }
//
}