import 'package:flutter/material.dart';
import 'package:tabb/login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(children: <Widget>[
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("assets/user.png"),
                      )),
                ),
                SizedBox(
                  height: 10,
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Align(
                        child: Text("User",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Align(
                        child: Text("abc@gmail.com",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            "logout",
                            style: TextStyle(color: Colors.purple),
                            textAlign: TextAlign.left,
                          )),
                    ),
                  ],
                )
              ]),
              SizedBox(height: 40),
              Text("ACCOUNT INFORMATION",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Padding(padding: EdgeInsets.all(10), child: info()),
              ListTile(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //children:<Widget>[
                title: Text('Dark Theme',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75)),
                trailing: Switch(value: false, onChanged: (changedTheme) {}),
              )
            ]),
      ),
    ));
  }
}

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Full Name',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.75)),
                    SizedBox(height: 3),
                    Text(
                      "User",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                Icon(Icons.edit, color: Colors.grey)
              ]),
          SizedBox(height: 20),
          Text('Email',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75)),
          SizedBox(height: 3),
          Text(
            "user@gmail.com",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(height: 20),
          Text('Phone',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75)),
          SizedBox(height: 3),
          Text(
            "+0900-786 01",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(height: 20),
          Text('Address',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75)),
          SizedBox(height: 3),
          Text(
            "New York,Random Street House No. 72",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(height: 20),
          Text('Gender',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75)),
          SizedBox(height: 3),
          Text(
            "Male",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(height: 20),
          Text('Date of Birth',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.75)),
          SizedBox(height: 3),
          Text(
            "October 13, 1999",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ]),
      ]),
    );
  }
}
