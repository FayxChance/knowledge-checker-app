import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'signup.dart';
import '../decoration_shapes.dart';
import '../../globals.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 250,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: 1000,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Hello !",
                          style: TextStyle(color: darkblue, fontSize: 40),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(color: darkblue, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 50.0, right: 50.0),
                                    child: Material(
                                      shadowColor: Colors.black,
                                      elevation: 10.0,
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 25.0),
                                          child: TextField(
                                            autocorrect: false,
                                            enableSuggestions: false,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              hintText: 'Username',
                                              suffixIcon: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(end: 12.0),
                                                child: Icon(
                                                  Icons.account_circle_outlined,
                                                  color: Colors.lightBlue,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: 10.0, left: 50.0, right: 50.0),
                                    child: Material(
                                      shadowColor: Colors.black,
                                      elevation: 10.0,
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Container(
                                        padding: EdgeInsets.only(left: 25.0),
                                        child: TextField(
                                          obscureText: true,
                                          autocorrect: false,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            hintText: 'Password',
                                            suffixIcon: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .only(end: 12.0),
                                              child: Icon(
                                                Icons.lock_outline_rounded,
                                                color: Colors.lightGreen,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 60.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: HrefText(text: "Forgot password ?"),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                margin: EdgeInsets.only(right: 60.0),
                                child: RaisedButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [darkblue, Color(0xff4AC496)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 125.0, minHeight: 50.0),
                                      alignment: Alignment.center,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Log in ",
                                                style: TextStyle(fontSize: 20)),
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.arrow_forward_rounded,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account ?      "),
                                HrefText(text: "SIGN UP", widget: SignUp()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DecorationShapes()
          ],
        ),
      ),
    );
  }
}

class HrefText extends StatelessWidget {
  final String text;
  final StatelessWidget widget;

  HrefText({Key key, this.text, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new RichText(
      text: new TextSpan(
        children: [
          new TextSpan(
            text: text,
            style: new TextStyle(color: Colors.blue, fontSize: 15),
            recognizer: new TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => widget),
                );
              },
          ),
        ],
      ),
    );
  }
}
