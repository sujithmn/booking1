// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
 // int val=0;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  var _tabTextIndexSelected = 1;
  var _listTextTabToggle = ["Document", "Non-Document"];

  @override
  Widget build(BuildContext context) {
    List<bool> isSelected = [true, false];
    int age = 10;
    return Container(
      // color: Colors.blue,
      child: ListView(
        children: [

          Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Container(
                width: 390,
                height: 40,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 40,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.account_box,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Domestic",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "International",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // 2nd layer closed

          // 3rd Layer Open
          Row(
            children: [
              Container(
                width: 390,
                height: 10,
                color: Colors.black26,
              ),
            ],
          ),

          // 3rd Layer Closed

          // 4th Layer Open (Story & Friends)
      Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Pickup Pincode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "pickup pincode",
                    prefixIcon: Icon(
                      Icons.location_on_rounded,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    fillColor: Color(
                      0xfff3f3f4,
                    ),
                    filled: true,
                  ),
                ),
              ],
            ),
          ),
      ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Delivery Pincode",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                    ],
                    textAlign: TextAlign.start,
                   // obscureText: false,
                    decoration: InputDecoration(
                      hintText: "delivery pincode",
                      suffixText:"BANGALORE",
                      suffixStyle: TextStyle(color: Colors.blue, fontSize: 20),
                      prefixIcon: Icon(
                        Icons.location_on_rounded,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      fillColor: Color(
                        0xfff3f3f4,
                      ),
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          FlutterToggleTab(
            // width in percent
            width: 100,
            borderRadius: 30,
            height: 50,
            selectedIndex: _tabTextIndexSelected,
            selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
            selectedTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700),
            unSelectedTextStyle: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w500),
            labels: _listTextTabToggle,
            selectedLabelIndex: (index) {
              //print("VALUE>>>>>>>>>>>>>>>> : $index");
              if(index==0){
                  //document();
              }else{
                  //nonDocument();
              }
              setState(() {
                _tabTextIndexSelected = index;
              });
            },
            isScroll: false,
          ),
          SizedBox(
            height: 20,
          ),
      Text(
        "Weight of ${_listTextTabToggle[_tabTextIndexSelected]} ",
        style: TextStyle(fontSize: 20),
      ),

          SizedBox(
            height: 20,
          ),


        ],
      ),
    );
  }
  Widget document(){
    return new Container();
  }
  Widget nonDocument(){
    return new Container();
  }
}
