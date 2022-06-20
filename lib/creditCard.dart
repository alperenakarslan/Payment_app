// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class creditCard extends StatelessWidget {
  const creditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.50,
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[900],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                      ),
                      Text(
                        '\$18,240',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/visa.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '****',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '****',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '****',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '1289',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CARD HOLDER'),
                      Text(
                        'ATIQUR RAHAMAN',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('EXPIRES'),
                      Text(
                        '09/24',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
