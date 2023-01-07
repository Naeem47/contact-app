import 'package:contacts/constants/color.dart';
import 'package:contacts/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customfield extends StatelessWidget {
   Customfield({super.key,required this.text,required this.controler,required this.type});
String text;
TextEditingController controler;
TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      
      child: TextField(

        keyboardType: type,
        controller: controler,
        decoration: InputDecoration(
          filled: true ,
          focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colorconstant.black,width: 2,),
          ),
          fillColor: Colorconstant.textfieldcolor,
          hintText: text,
          hintStyle: Roboto414.copyWith(color: Colorconstant.textfieldhelpercolor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(color: Colorconstant.black,width: 2,),),
        ),
      ),
    );
  }
}

