import 'package:Ghyabko/main.dart';
import 'package:Ghyabko/screens/Admin/Home.dart';
import 'package:Ghyabko/screens/Doctor/subject_page.dart';
import 'package:Ghyabko/screens/Student/your_subject.dart';
import 'package:Ghyabko/screens/auth/OTP_Verfication.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

const constColor = Color(0xFF6469d9);
String? email;
String? password;
dynamic typeuser;

class _LoginPageState extends State<LoginPage> {
  String? _groupvalue;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/background.png", fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset("assets/light-1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 165),
              child: Image.asset("assets/light-2.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 290, top: 100),
              child: Image.asset("assets/clock.png"),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 210, left: 155),
                child: Text('Login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 20, right: 20),
              child: Form(
                child: Positioned(
                  bottom: mq.height * .15,
                  left: mq.width * .05,
                  width: mq.width * .9,
                  height: mq.height * .06,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        onChanged: (data) {
                          email = data;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Academic Email',
                          hintStyle: TextStyle(
                            color: constColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: constColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: constColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        obscureText: true,
                        onChanged: (data) {
                          password = data;
                        },
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: constColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: constColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: constColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => const Color(0xFF6469d9)),
                                value: "Admin",
                                groupValue: _groupvalue,
                                onChanged: handleRadio,
                              ),
                              const Text(
                                "Admin",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF6469d9),
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => const Color(0xFF6469d9)),
                            value: "Doctor",
                            groupValue: _groupvalue,
                            onChanged: handleRadio,
                          ),
                          const Text(
                            "Doctor",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6469d9),
                                fontSize: 20),
                          ),
                          Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => const Color(0xFF6469d9)),
                            value: "Student",
                            groupValue: _groupvalue,
                            onChanged: handleRadio,
                          ),
                          const Text(
                            "Student",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6469d9),
                                fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_groupvalue == "Doctor") {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return SubjectName();
                            })));
                          } else if (_groupvalue == "Student") {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return YourSubject();
                            })));
                          } else if (_groupvalue == "Admin") {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return const Home();
                            })));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: constColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Text('Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const OTPscreen();
                        }))),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 100, right: 30),
                          child: Row(
                            children: [
                              Text(
                                'Forget Password ?',
                                style: TextStyle(
                                  color: constColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: () => Navigator.push(context,
                              //       MaterialPageRoute(builder: ((context) {
                              //     return const RegistrationPage();
                              //   }))),
                              //   child: const Text('Register',
                              //       style: TextStyle(
                              //           decoration: TextDecoration.underline,
                              //           color: constColor,
                              //           fontSize: 17,
                              //           fontWeight: FontWeight.bold)),
                              // ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void handleRadio(String? value) {
    setState(() {
      _groupvalue = value;
    });
  }
}
