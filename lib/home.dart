import 'package:flutter/material.dart';
import 'color.dart';
import 'customTextButtone.dart';
import 'homeReportContainer.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows_sharp, color: primaryColor),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home , color: primaryColor),
            label: 'الرئيسية',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => Home()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
          child: HomeReportContainer(),
        ),
      ),
    );
  }
}

