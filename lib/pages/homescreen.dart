import 'package:flutter/material.dart';

class HomeScren extends StatefulWidget {
  @override
  _HomeScrenState createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_open),
              title: Text('Biblia'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hotel),
              title: Text('AAAA'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30,bottom: 5,top: 50),
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.blue,
                          child: Text(
                            "VP",
                            style: TextStyle(fontSize: 35),
                          )),
                    ),
                    
                    Text(
                      "Victor Prado",textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "victorpradosampaio123@gmail.com",textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Meu Perfil"),
                onTap: () {
                  debugPrint('toquei no drawer');
                }),
          ],
        )),
        body: Container(
          child: Card(
            
          )
        ),
      ),
    );
  }
}
