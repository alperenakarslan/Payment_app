import 'package:flutter/material.dart';

class ListingPage extends StatelessWidget {
  ListingPage(
      {Key? key,
      this.titleFirst = "",
      this.titleSub = "",
      this.img = '',
      this.payment = ''})
      : super(key: key);
  String titleFirst;
  String titleSub;
  String payment;
  String img;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(img),
        title: Text(titleFirst),
        subtitle: Text(titleSub),
        trailing: Text(
          payment,
          style: TextStyle(
              fontSize: 20,
              color: payment == "+\$163" ? Colors.green : Colors.red),
        ),
      ),
    );
  }
}
