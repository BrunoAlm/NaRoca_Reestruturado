import 'package:flutter/material.dart';

class CardAgenda extends StatelessWidget {
  const CardAgenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/card_images/agenda.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: Colors.black.withOpacity(0.2),
              blurRadius: 3,
              spreadRadius: 2,
            ),
          ],
        ),
      ),
    );
  }
}
