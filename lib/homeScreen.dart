//import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TransactionController transactionController =
//     // Provider.of<TransactionController>(context);
//     // TransDetailController transactionDetailController =
//     // Provider.of<TransDetailController>(context);
//
//     return homeReportContainer();
        //balance container
//         HomeReportContainer(transactionController: transactionController),
//         //recent transactions title
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//                 flex: 4,
//                 child: Text("Recent transactions",
//                     style: TextStyle(
//                         fontSize: 20, fontWeight: FontWeight.bold))),
//             Expanded(
//               child: CustomTextButton(
//                 press: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                             TransactionList())),
//                 textStyle: TextStyle(
//                     color: selectedTextButton,
//                     fontWeight: FontWeight.bold),
//                 text: 'See All',
//               ),
//             )
//           ],
//         ),
//         //transaction List View
//         RecentTransList(
//             transController: transactionController,
//             transDetailController: transactionDetailController),
//       ],
//     );
//   }
// }
