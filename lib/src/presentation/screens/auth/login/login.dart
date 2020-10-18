import 'package:findvity_app/src/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../widgets/show_up.dart';
import 'package:flutter/material.dart';
import '../../../utils/styles.dart';

class LoginScreen extends StatefulWidget {
  static const routename = "/login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  DateTime dob;

  final _formkey = GlobalKey<FormState>();
  var format = DateFormat.yMMMd();
  String dropDownButtonValue = "Male";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            title: ShowUp(
              child: Text(
                'FINDVITY',
                style: titleText,
              ),
              delay: Duration(milliseconds: 100),
            ),
            floating: true,
            snap: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: ShowUp(
                delay: Duration(milliseconds: 150),
                child: Text(
                  'GET OUT OF YOUR COMFORT ZONE',
                  style: smallText.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: ShowUp(
                delay: Duration(milliseconds: 200),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'LOGIN',
                        style: heading,
                      ),
                      Container(
                        width: 80,
                        height: 4,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: borderRadiusButton,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'USERNAME',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        controller: _usernameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email),
                          hintText: 'john_doe',
                        ),
                        validator: (String value) {
                          if (value == '') {
                            return 'This field is required';
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'PASSWORD',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: '••••••',
                        ),
                        validator: (value) {
                          if (value == '') {
                            return 'This field is required';
                          }
                          if (value.length < 6) {
                            return 'Password length must be atleast 6 characters long';
                          }
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 52,
                        child: RaisedButton(
                          color: accentColor,
                          child: Text('REGISTER'),
                          textColor: Colors.white,
                          elevation: 0,
                          onPressed: () {
                            if (_formkey.currentState.validate()) {
                              SystemChannels.textInput.invokeMethod('TextInput.hide');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: ()=>Get.offNamed(RegisterScreen.routename),
                          shape: RoundedRectangleBorder(
                            borderRadius: borderRadiusButton,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: smallText,
                              children: [
                                TextSpan(
                                  text: 'DONT HAVE AN ACCOUNT? ',
                                ),
                                TextSpan(
                                  text: 'REGISTER',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
