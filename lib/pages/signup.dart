import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productionapp/pages/home.dart';
import 'package:productionapp/pages/login.dart';
import 'package:productionapp/widgets/widgets_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final gkey = GlobalKey<FormState>();
  String name = "", email = '', password = "";
  TextEditingController uname = TextEditingController();
  TextEditingController uemail = TextEditingController();
  TextEditingController upass = TextEditingController();
  register() async {
    if (password != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Registered Sucessfully",
                style: TextStyle(backgroundColor: Colors.green))));
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => Home(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.message == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Weak Password",
                  style: TextStyle(backgroundColor: Colors.red))));
        } else if (e.message == 'email-already-exists') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Account already exists",
                  style: TextStyle(backgroundColor: Colors.red))));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Form(
                key: gkey,
                child: Column(
                  children: [
                    Center(
                      child: Text("Foody",
                          style: GoogleFonts.lobster(
                              color: Colors.black, fontSize: 40)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text('Sign Up',
                                style: Appwidget.Headtextfieldstyle()),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: uname,
                              validator: (value) {
                                if (value == null) {
                                  return 'please enter your name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "Enter the Name",
                                  hintStyle: Appwidget.Lighttextfieldstyle(),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: uemail,
                              validator: (value) {
                                if (value == null) {
                                  return 'please enter your email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "Enter the Email",
                                  hintStyle: Appwidget.Lighttextfieldstyle(),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.black,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: upass,
                              validator: (value) {
                                if (value == null) {
                                  return 'please enter your password';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter the password",
                                hintStyle: Appwidget.Lighttextfieldstyle(),
                                prefixIcon: Icon(
                                  Icons.password_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (gkey.currentState!.validate()) {
                                  setState(() {
                                    name = uname.text;
                                    email = uemail.text;
                                    password = upass.text;
                                  });
                                  register();
                                }
                              },
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 231, 95, 3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    "Sign Up",
                                    style: Appwidget.Headtextfieldstyle(),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => Login(),
                            ),
                          );
                        },
                        child: Text("Already have an Account?Sign in",
                            style: Appwidget.Lighttextfieldstyle())),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
