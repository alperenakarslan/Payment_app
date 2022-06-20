// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "name": "Leslee Moss",
      "family": "Sister",
      "img": "assets/images/leslee.png"
    },
    {"name": "Sun Jun", "family": "Brother", "img": "assets/images/sun.png"},
    {
      "name": "Sebastian Bennett",
      "family": "Wife",
      "img": "assets/images/sebastian.png"
    },
    {
      "name": "Carmen Beltran",
      "family": "Sister",
      "img": "assets/images/carmen.png"
    },
    {
      "name": "Daisy Murphy",
      "family": "Mother",
      "img": "assets/images/daisy.png"
    },
    {
      "name": "Diago Morata",
      "family": "Brother",
      "img": "assets/images/diego.png"
    },
  ];
  List<Map<String, dynamic>> _foundUsers = [];
  @override
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
        title: Text('Send Money'),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
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
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'Contacts',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
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
