import 'package:Ghyabko/screens/auth/Login_Screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class All_Student extends StatelessWidget {
  const All_Student({Key? key}) : super(key: key);

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
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70, left: 120),
                child: Text('All Student',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170, right: 10, left: 10),
                child: TextFormField(
                  onChanged: (data) {},
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: constColor,
                    hintText: 'Enter Subject Name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: constColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160, left: 10, right: 10),
                child: SizedBox(
                  height: 600,
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: constColor,
                          margin: const EdgeInsets.all(5),
                          child: ListTile(
                              leading: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              trailing:
                                  const Icon(Icons.delete, color: Colors.white),
                              title: Text(
                                "Subject Name $index",
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        );
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
