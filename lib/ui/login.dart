import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leet_login/ui/password_reset.dart';
import 'package:leet_login/ui/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'LeetCode',
          style: TextStyle(
            color: Colors.white12,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.blueGrey[800],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.white38),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    controller: emailField,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey[800],
                        ),
                      ),
                      hintText: 'something@email.com',
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: 'Username or E-mail',
                      labelStyle: TextStyle(
                          color: Colors.blueGrey[600], fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                child: Theme(
                  data:
                      Theme.of(context).copyWith(primaryColor: Colors.white38),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    controller: passwordField,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey[800],
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.blueGrey[600], fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.0,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blueGrey[600],
                      ),
                      child: MaterialButton(
                        child: Text('Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PasswordReset(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUP(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'or you can sign in with ',
                    style: TextStyle(color: Colors.white54, fontSize: 20.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.google),
                        alignment: Alignment.center,
                        iconSize: 15.0,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.github),
                        iconSize: 17.0,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebookF),
                        iconSize: 17.0,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: IconButton(
                        icon: Icon(Icons.more),
                        iconSize: 17.0,
                        color: Colors.black,
                        onPressed: () {},
                      ),
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
