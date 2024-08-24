import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productionapp/pages/login.dart';
import 'package:productionapp/pages/signup.dart';
import 'package:productionapp/widgets/widgets_support.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
    final _gkey=GlobalKey<FormState>();
  String email='';
  TextEditingController uemail=TextEditingController();
  login()async{
    if(email!=null)
    {
      try{
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email sent Sucessfully..",style:TextStyle(backgroundColor: Colors.green))));
      }on FirebaseAuthException catch(e)
      {
        if(e.code=='wrong-email')
        {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong email",style:TextStyle(backgroundColor: Colors.red))));
        }
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFff5c30),
              Color(0xFFe74b1a),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/3),
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
        ),
        Container(
           margin: EdgeInsets.only(top:60,left: 20,right: 20),
           child: Column(
            children: [
              Center(child: Text("Foody",style:GoogleFonts.lobster(color: Colors.black,fontSize: 40)),),
              SizedBox(height: 30,),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _gkey,
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        Text('Forgot Password',style:Appwidget.Headtextfieldstyle()),
                        SizedBox(height: 20,),
                        TextFormField(
                          controller: uemail,
                          validator: (value)
                          {
                            if(value==null||value.isEmpty)
                            {
                              return 'please enter the email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                          
                            hintText: "Enter the Email",
                            hintStyle: Appwidget.Lighttextfieldstyle(),
                            prefixIcon: Icon(Icons.email_outlined,color: Colors.black,)
                          ),
                        ),
                       
                       
                    
                         SizedBox(height: 50,),
                         GestureDetector(
                          onTap: (){
                            if(_gkey.currentState!.validate())
                            {
                              setState(() {
                                email=uemail.text;
                             
                              });
                              login();
                            }
                          },
                           child: Material(
                            elevation: 10,
                               borderRadius: BorderRadius.circular(10),
                             child: Container(
                               width:200,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 95, 3),
                                borderRadius: BorderRadius.circular(10)
                              ),
                                child: Center(child: Text("Send Email",style: Appwidget.Headtextfieldstyle(),)),
                             ),
                           ),
                         ),
                    
                      ],
                    ),
                  ),
                ),
              ),
                SizedBox(height: 70,),
                GestureDetector(
                  onTap: (){
                       Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => Signup(),
    ),
  );
                  },
                  child: Text("Don't have an Account?Sign up",style:Appwidget.Lighttextfieldstyle())),
            ],
           ),
        )
        ],),
      ),
    );
  }
}