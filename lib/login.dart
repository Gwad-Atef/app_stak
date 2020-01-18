import 'package:flutter/material.dart';
import './stacked_icons.dart';
import './home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFFF18D191)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StakedIcons(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    'Quick Bee',
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()
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
                          "Login",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
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
                      child: new Text(
                        "Forget Password",
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xFFF18D191)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Text(
                      'Create a New Account',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Color(0xFFF18D191),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
