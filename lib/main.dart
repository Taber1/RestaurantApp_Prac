import 'package:flutter/material.dart';
import 'package:tabb/login.dart';
import 'package:tabb/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Resraurant App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Icon(Icons.arrow_back, color: Colors.black),
              backgroundColor: Colors.white,
              bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.purple,
                  indicatorColor: Colors.purple,
                  tabs: <Widget>[
                    Tab(
                        child: Text('Login',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Tab(
                        child: Text('Register',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ]),
            ),
            body: TabBarView(children: <Widget>[
              Login(),
              Sin(),
            ]),
          )),
    );
  }
}
