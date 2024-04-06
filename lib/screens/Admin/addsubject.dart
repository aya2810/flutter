import 'package:Ghyabko/model/Admin_Model/list_Builder.dart';
import 'package:Ghyabko/screens/auth/Login_Screen.dart';
import 'package:flutter/material.dart';

class Addsubject extends StatelessWidget {
  const Addsubject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        floatingActionButton: FloatingActionButton(
          backgroundColor: constColor,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Body(),
        ));
  }
}
