import 'package:flutter/material.dart';
import '../view/stats/Stat.view.dart';
import '../view/accounts/Account.view.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex =0;
  final List<Widget> _children=[AccountPage(),StatePage(title: 'Flutter Demo Home Page')];

void _onTap(int i){
 setState((){
   _selectedIndex =i;
 });
}

Widget render(){
  return  Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onTap,
      ),);
}
  @override
  Widget build(BuildContext context) {
    return render();
  }
}
