import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appwidget
{
  static TextStyle boldtextfieldstyle()
  {
    return TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:'Poppins');
  }
    static TextStyle Headtextfieldstyle()
  {
    return TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:'Poppins');
  }
      static TextStyle Lighttextfieldstyle()
  {
    return  GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black,);
  }
  
}