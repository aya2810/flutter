import 'package:Ghyabko/model/Student_Model/Notificationclass.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Items extends StatelessWidget {
  Items({super.key, required this.notification});
  Notifi notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          color: const Color(0xFF6469d9),
          borderRadius: BorderRadius.circular(50)),
      width: double.infinity,
      height: 65,
      child: Row(children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            notification.text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
