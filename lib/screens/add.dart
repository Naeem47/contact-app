

import 'package:contacts/constants/color.dart';
import 'package:contacts/constants/text.dart';
import 'package:contacts/constants/text_style.dart';
import 'package:contacts/models/list.dart';
import 'package:contacts/screens/list.dart';
import 'package:contacts/screens/listview.dart';
import 'package:contacts/screens/main_view.dart';
import 'package:contacts/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
 addnewcontact (context){setState(() {
   Contacts.add({
    "Name":controller1.text,
    "Surname":controller2.text,
    "Phonenumber":controller3.text,
   });
 });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
             Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colorconstant.black,
            )),
        elevation: 1,
        backgroundColor: Colorconstant.white,
        shadowColor: Colorconstant.black,
        title: Text(
          TextConstants.add,
          style: Roboto500.copyWith(color: Colorconstant.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              addnewcontact(context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return  Listcont();
              }),);
            },
            icon: Icon(
              Icons.check,
              color: Colorconstant.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TextConstants.name,
              style: Roboto414.copyWith(
                color: Colorconstant.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Customfield(text: TextConstants.helper1, controler: controller1,type: TextInputType.name, ),
            const SizedBox(
              height: 20,
            ),
            Text(
              TextConstants.surname,
              style: Roboto414.copyWith(
                color: Colorconstant.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Customfield(text: TextConstants.helper2,controler: controller2,type: TextInputType.name,),
            const SizedBox(
              height: 20,
            ),
            Text(
              TextConstants.phonenumber,
              style: Roboto414.copyWith(
                color: Colorconstant.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Customfield(text: TextConstants.helper3,controler: controller3,type: TextInputType.phone,),
          ],
        ),
      ),
    );
  }
}
