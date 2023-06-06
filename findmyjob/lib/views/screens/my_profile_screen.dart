import 'package:findmyjob/views/screens/home_screen.dart';
import 'package:findmyjob/views/screens/map_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:findmyjob/views/widgets/jtext_form_field.dart';

import 'base_nav_screen.dart';

class MyProfileScreen extends StatefulWidget {
  static const route = '/my-profile';

  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Create Your Profile',
          style: TextStyle(
            color: Color.fromARGB(173, 32, 32, 32),
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromRGBO(114, 230, 255, 100).withOpacity(1),
              const Color.fromRGBO(6, 210, 255, 100).withOpacity(1),
            ],
          ),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/FindMyPage.png',
                    height: 100,
                    width: 200,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 2, 2),
                                    width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 248, 37, 37),
                                    width: 3.0),
                              ),
                              labelText: 'First Name',
                              prefixIcon: Icon(Icons.person_2_outlined),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your First Name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 2, 2),
                                    width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 248, 37, 37),
                                    width: 3.0),
                              ),
                              labelText: 'Last Name',
                              prefixIcon: Icon(Icons.person_2_outlined),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Last Name ';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 2, 2),
                                    width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 248, 37, 37),
                                    width: 3.0),
                              ),
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 2, 2),
                                    width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 248, 37, 37),
                                    width: 3.0),
                              ),
                              labelText: 'Phone Number',
                              prefixIcon: Icon(Icons.phone_android),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Phone Number';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 2, 2),
                                    width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 248, 37, 37),
                                    width: 3.0),
                              ),
                              labelText: 'Date Of birth',
                              prefixIcon: Icon(Icons.date_range),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your DOB ';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.datetime,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 2, 2),
                                    width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 248, 37, 37),
                                    width: 3.0),
                              ),
                              labelText: 'Gender',
                              prefixIcon: Icon(Icons.person_pin),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Gender';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 2, 2),
                                    width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 3.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 248, 37, 37),
                                    width: 3.0),
                              ),
                              labelText: 'Address',
                              prefixIcon: Icon(Icons.location_city),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Address';
                              }
                              return null;
                            },
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStatePropertyAll(Size(100, 50)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(204, 62, 128, 142)
                                      .withOpacity(1))),
                          onPressed: () {
                            // Validate returns true if the form is valid, or false otherwise.
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BaseNavScreen()));
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
