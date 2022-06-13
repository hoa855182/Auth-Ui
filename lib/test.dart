
// import 'package:flutter/material.dart';

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }
// class _TestState extends State<Test> {
  
//   List<String> listitems = [
//     "United States of America",
//     "Canada",
//     "United Kingdom",
//     "China",
//     "Russia",
//     "Austria"
//   ];
//   String selectval = "United States of America";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Dropdown Button in Flutter"),
//           backgroundColor: Colors.deepOrange,
//         ),
//         body: Container(
//           margin: EdgeInsets.only(top: 80),
//           alignment: Alignment.topCenter,
//           child: DropdownButton(
//             value: selectval,
//             onChanged: (value) {
//               setState(() {
//                 selectval = value.toString();
//               });
//             },
//             items: listitems.map((itemone) {
//               return DropdownMenuItem(value: itemone, child: Text(itemone));
//             }).toList(),
//           ),
//         ));
//   }
// }
