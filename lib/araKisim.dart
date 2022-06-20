import 'package:flutter/material.dart';

class araKisim extends StatelessWidget {
  const araKisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('Transactions', style: TextStyle(fontSize: 20),), Icon(Icons.arrow_right_alt, size: 30.00,)],
      ),
    );
  }
}
