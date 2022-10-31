import 'package:flutter/material.dart';
import 'TransactionController.dart';
import 'color.dart';

String expense = "الصرف";
String income = "الدخل";
List<String> list = <String>['Income', 'Expense'];

var items = [
  'Income',
  'Expense',
];

class HomeReportContainer extends StatelessWidget {
  const HomeReportContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
          color: whiteColor.withOpacity(0.85),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("الراتــب",
              style: TextStyle(
                  color: blackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SAR", style: TextStyle(color: textINRColor)),
              Expanded(
                child: Text("0",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                    textAlign: TextAlign.center),
              ),
              IconButton(
                icon: Icon(Icons.edit_note),
                color: Colors.black38,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0)), //this right here
                          child: Container(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'فضلا قم بإدخال راتبك'),
                                  ),
                                  TextButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.teal,
                                      onPrimary: Colors.white,
                                      shadowColor: Colors.teal,
                                      elevation: 7,
                                      textStyle: const TextStyle(fontSize: 15),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      minimumSize: Size(110, 10),
                                    ),
                                    child: const Text('Done !'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
          // IncomeExpense(transactionController: transactionController),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                  width: 1,
                  color: greyColor,
                  style: BorderStyle.solid,
                  strokeAlign: StrokeAlign.inside),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_downward, color: incomeGreen),
                        Text(income, style: TextStyle(color: blackColor)),
                      ],
                    ),
                    Center(
                      child: Text(
                        "٨٠٠٠",
                        style: TextStyle(color: blueColor, fontSize: 20),
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.black26,
                width: 2,
                height: 50.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_upward, color: expenseRed),
                        Text(expense, style: TextStyle(color: blackColor)),
                      ],
                    ),
                    Center(
                      child: Text(
                        "٤٠٠",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
        ]

      ),
    );
  }
}

