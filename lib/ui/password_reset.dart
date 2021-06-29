import 'package:flutter/material.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key key}) : super(key: key);

  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  TextEditingController emailField = TextEditingController();
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
            Divider(
              color: Colors.blueGrey[800],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password Reset',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Divider(
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 8,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown[200],
                          ),
                          color: Colors.brown[800],
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Forgotten your password? Enter your e-mail address below, and we'll send you an e-mail allowing you to reset it",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 20,
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(primaryColor: Colors.black),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            controller: emailField,
                            decoration: InputDecoration(
                              fillColor: Colors.black,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 12.0,
                              //offset: const Offset(10, 10),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.0,
                        height: MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.green[400],
                        ),
                        child: MaterialButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Reset My Password',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
