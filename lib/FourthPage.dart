// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FourtPage extends StatefulWidget {
  const FourtPage({Key? key}) : super(key: key);

  @override
  State<FourtPage> createState() => _FourtPageState();
}

class _FourtPageState extends State<FourtPage> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "name": "Creative Electric Service",
      "family": "14460 Beler Curve, Venamouth,",
      "img": "assets/images/earth.png"
    },
    {
      "name": "Python Water Company",
      "family": "Burgerplatz 28, 15583 Eutin",
      "img": "assets/images/pyhton.png"
    },
    {
      "name": "Link3 Technologies Ltd.",
      "family": "6798 Dare Underpass",
      "img": "assets/images/link.png"
    },
    {
      "name": "Sister",
      "family": "Carmen Beltran",
      "img": "assets/images/circle.png"
    },
  ];
  List<Map<String, dynamic>> _foundUsers = [];
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where(
            (user) => user["name"].toLowerCase().contains(
                  enteredKeyword.toLowerCase(),
                ),
          )
          .toList();
    }
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text('Send Money'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          AspectRatio(
            aspectRatio: 2.7,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.blue[900],
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextField(
                      onChanged: (value) => _runFilter(value),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Search a person or business',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/electric.png'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text('Electric'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/water.png'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text('Water'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/internet.png'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text('Internet'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/payment.png'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text('Payment'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mostly Used',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: _foundUsers.isNotEmpty
                ? ListView.builder(
                    itemCount: _foundUsers.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Card(
                      child: Card(
                        elevation: 0,
                        child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            elevation: 0,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(_foundUsers[index]["img"]),
                                backgroundColor: Colors.transparent,
                              ),
                              title: Text(_foundUsers[index]["name"]),
                              subtitle: Text(_foundUsers[index]["family"]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Align(
                    alignment: Alignment.center,
                    child: const Text(
                      'No Result Found',
                    ),
                  ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
        onPressed: () {},
        label: Text('Scan QR Code'),
        icon: Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
