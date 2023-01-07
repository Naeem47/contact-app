import 'package:contacts/constants/color.dart';
import 'package:contacts/screens/main_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splahview extends StatefulWidget {
  const Splahview({super.key});

  @override
  State<Splahview> createState() => _SplahviewState();
}

class _SplahviewState extends State<Splahview> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed( const Duration(seconds: 3),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
       return const Mainview();
      }));
    },);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colorconstant.white,
      child: Center(
        child: LottieBuilder.asset("assets/lotties/contacts.json"),
      ),
    );
  }
}
