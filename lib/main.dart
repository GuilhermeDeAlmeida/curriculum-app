import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculo Guilherme',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Guilherme'),
        ),
        drawer: menuDrawer(),
        body: Center(child: Column(children: [Text('Content')])),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Editar')),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Profissional')),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Caracteristicas')),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget menuDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Contato'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Configurações'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
