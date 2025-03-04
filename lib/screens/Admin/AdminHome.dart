import 'package:Ghyabko/model/Admin_Model/category_item.dart';
import 'package:Ghyabko/screens/Admin/addDoctor.dart';
import 'package:Ghyabko/screens/Admin/addStudent.dart';
import 'package:Ghyabko/screens/Admin/addsubject.dart';
import 'package:Ghyabko/screens/Admin/asignpage.dart';
import 'package:Ghyabko/screens/auth/Login_Screen.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  static const constColor = Color(0xFF6469d9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return const LoginPage();
          })));
        },
        backgroundColor: constColor,
        child: const Icon(
          Icons.logout_rounded,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xff12032C),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
            opacity: 50,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Welcome Admin',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Pacifico',
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Category(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddStudent(title: 'All subject');
                  }));
                },
                text: 'ADD Student',
                color: constColor,
              ),
              const SizedBox(
                height: 60,
              ),
              Category(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Doctor(title: 'All Subject');
                  }));
                },
                text: 'ADD DOCTOR',
                color: constColor,
              ),
              const SizedBox(
                height: 60,
              ),
              Category(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Addsubject();
                  }));
                },
                text: 'ADD SUBJECT',
                color: constColor,
              ),
              const SizedBox(
                height: 60,
              ),
              Category(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Asign_Page();
                  }));
                },
                text: 'Asign Student to Subject',
                color: constColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
