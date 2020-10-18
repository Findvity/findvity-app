import 'package:findvity_app/src/presentation/screens/auth/login/login.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../widgets/show_up.dart';
import 'package:flutter/material.dart';
import '../../../utils/styles.dart';

class RegisterScreen extends StatefulWidget {
  static const routename = "/register";
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
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
                        'REGISTER',
                        style: heading,
                      ),
                      Container(
                        width: 105,
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
                        'NAME',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        controller: _nameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Jon Doe',
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
                        'GENDER',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DropdownButtonFormField(
                        value: dropDownButtonValue,
                        onChanged: (String value) {
                          setState(() {
                            dropDownButtonValue = value;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text('Male'),
                            value: "Male",
                          ),
                          DropdownMenuItem(
                            child: Text('Female'),
                            value: "Female",
                          ),
                          DropdownMenuItem(
                            child: Text('Non-Binary'),
                            value: "Non-Binary",
                          ),
                          DropdownMenuItem(
                            child: Text('Prefer not to disclose'),
                            value: "Prefer not to disclose",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'DATE OF BIRTH',
                      ),
                      Row(
                        children: [
                          RaisedButton(
                            onPressed: () async {
                              final DateTime picked = await showDatePicker(
                                context: context,
                                initialDate: dob ?? DateTime.now(), // Refer step 1
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              );
                              if (picked != null && picked != dob)
                                setState(() {
                                  dob = picked;
                                });
                            },
                            elevation: 0,
                            textColor: Colors.white,
                            child: Text('SELECT DATE'),
                          ),
                          Spacer(),
                          Text(dob != null ? format.format(dob) : '')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'PHONE',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.phone,
                        controller: _phoneController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: '8860986398',
                        ),
                        validator: (String value) {
                          value.trim();
                          if (value == '') {
                            return 'This field is required';
                          }
                          if (value.length > 10) {
                            return 'Enter 10 digit phone number';
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
                          onPressed: ()=>Get.offNamed(LoginScreen.routename),
                          shape: RoundedRectangleBorder(
                            borderRadius: borderRadiusButton,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: smallText,
                              children: [
                                TextSpan(
                                  text: 'ALREADY HAVE AN ACCOUNT? ',
                                ),
                                TextSpan(
                                  text: 'LOGIN',
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
