import 'package:flutter/material.dart';

class CardQueFalta extends StatelessWidget {
  const CardQueFalta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: const [],
        ),
      ),
    );
  }
}
