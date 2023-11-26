// import 'package:flutter/material.dart';
// import 'package:women_center_mobile/style.dart';

// class TabBarPayment extends StatefulWidget {
//   const TabBarPayment({super.key});

//   @override
//   State<TabBarPayment> createState() => _TabBarPaymentState();
// }

// class _TabBarPaymentState extends State<TabBarPayment> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2, // Set the number of tabs you need
//       child: Container(
//         padding: EdgeInsets.only(left: 23, right: 23),
//         child: Column(
//           children: <Widget>[
//             Text(
//               'Pilih Pembayaran',
//               style: defaultB.copyWith(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10), // Add some space between text and TabBar
//             TabBar.secondary(
//               tabs: [
//                 Tab(text: 'Tab 1'), // Add your tab labels
//                 Tab(text: 'Tab 2'),
//               ],
//             ),
//             SizedBox(height: 10), // Add some space between TabBar and content
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // Content for Tab 1
//                   Container(
//                     child: Text('Content for Tab 1'),
//                   ),
//                   // Content for Tab 2
//                   Container(
//                     child: Text('Content for Tab 2'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
