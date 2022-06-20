// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HalfCard extends StatelessWidget {
  const HalfCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.90,
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
                const Text(
                  '\$18,240',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '****',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    const Text(
                      '****',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    const Text(
                      '****',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    const Text(
                      '1289',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
