// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '/araKisim.dart';
import '/creditCard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Your Wallet',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          creditCard(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          araKisim(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/dribble.png'),
                      backgroundColor: Colors.red.shade100,
                    ),
                    title: Text('Dribble Inc.'),
                    subtitle: Text('Payment'),
                    trailing: Text(
                      '-\$45',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/spotify.png'),
                      backgroundColor: Colors.green.shade100,
                    ),
                    title: Text('Spotify Family'),
                    subtitle: Text('Payment'),
                    trailing: Text(
                      '+\$163',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/netflix.png'),
                      backgroundColor: Colors.grey.shade100,
                    ),
                    title: Text('Netflix'),
                    subtitle: Text('Payment'),
                    trailing: Text(
                      '-\$15',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/uber.png'),
                      backgroundColor: Colors.blueGrey.shade100,
                    ),
                    title: Text('Uber Inc'),
                    subtitle: Text('Payment'),
                    trailing: Text(
                      '-\$35',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
