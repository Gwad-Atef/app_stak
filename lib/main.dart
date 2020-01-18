import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Pro',
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFFF18D191),
                  ),
                  child: Icon(
                    Icons.local_offer,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFFFC6A7F),
                  ),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 40.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFFFFCE56),
                  ),
                  child: Icon(
                    Icons.local_car_wash,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 90.0, top: 40.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFFF45E0EC),
                  ),
                  child: Icon(
                    Icons.place,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Quick Bee',
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage()
                        ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            color: Color(0xFFF18D191),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Sign in With Email",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFFDF513B),
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "Google",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFF4364A1),
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "FaceBook",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
