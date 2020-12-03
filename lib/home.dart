import 'package:flutter/material.dart';
import 'package:tabb/home/dashboard.dart';
import 'package:tabb/home/favourite.dart';
import 'package:tabb/home/profile.dart';
import 'package:tabb/home/search.dart';
import 'package:tabb/home/shop.dart';

import 'home/search.dart';

void main() => runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentTab = 0;
  final List<Widget> screen = [
    dashboard(),
    favourite(),
    search(),
    shop(),
    profile(),
  ];

  Widget CurrentScreen = dashboard();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ecom App UI',
          textAlign: TextAlign.right,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.black)),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: PageStorage(bucket: bucket, child: CurrentScreen),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            CurrentScreen = search();
            currentTab = 5;
          });
        },
        child: Icon(
          Icons.search,
          size: 32,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: MaterialButton(
                        minWidth: 50,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = dashboard();
                            currentTab = 0;
                          });
                        },
                        child: Icon(Icons.home,
                            size: 32,
                            color:
                                currentTab == 0 ? Colors.purple : Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = favourite();
                            currentTab = 1;
                          });
                        },
                        child: Icon(Icons.favorite,
                            size: 32,
                            color:
                                currentTab == 1 ? Colors.purple : Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = shop();
                            currentTab = 2;
                          });
                        },
                        child: Icon(Icons.add_shopping_cart,
                            size: 32,
                            color:
                                currentTab == 2 ? Colors.purple : Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = profile();
                            currentTab = 3;
                          });
                        },
                        child: Icon(Icons.person,
                            size: 32,
                            color:
                                currentTab == 3 ? Colors.purple : Colors.grey),
                      ),
                    ),
                  ])),
        ),
      ),
    );
  }
}
