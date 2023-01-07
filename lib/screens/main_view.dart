

import 'package:contacts/constants/color.dart';
import 'package:contacts/constants/text.dart';
import 'package:contacts/constants/text_style.dart';
import 'package:contacts/models/list.dart';
import 'package:contacts/screens/add.dart';
import 'package:contacts/screens/listview.dart';
import 'package:contacts/screens/splash.dart';
import 'package:flutter/material.dart';

class Mainview extends StatefulWidget {
  const Mainview({super.key});

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.white,
       appBar: AppBar(
        
        elevation: 1,
        backgroundColor: Colorconstant.white,
        shadowColor: Colorconstant.black,
        title: Text(
          TextConstants.contacts,
          style: Roboto500.copyWith(color: Colorconstant.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
            
            },
            icon: Icon(
              Icons.search,
              color: Colorconstant.black,
            ),
          ),
           IconButton(
            onPressed: () {
            
            },
            icon: Icon(
              Icons.more_vert,
              color: Colorconstant.black,
            ),
          ),
        
        ],
      ),
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Padding(
            padding: const EdgeInsets.only(
              top: 170,
              left: 100,
              right: 100,
            ),
            child: Center(
                child: Image.asset("assets/images/empty.png",
                    width: 105.08, height: 100),),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              TextConstants.nocontacts,
              style: Roboto516.copyWith(color: Colorconstant.black),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colorconstant.white,
        
        onPressed: () {
     Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return const Add();
     },),);
        },
        elevation: 2,
        child: Icon(
          Icons.add,
          color: Colorconstant.black,
        ),
      ),
    );
  }
}


