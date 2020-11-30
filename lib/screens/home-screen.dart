import 'package:flutter/material.dart';

import 'home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      Home(),
      Container(
        child: Center(
          child: Text('Feed')
        ),
      ),
      Container(
        child: Center(
          child: Text('Perfil')
        ),
      ),
      Container(
        child: Center(
          child: Text('Settings')
        ),
      ),
    ];

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Container(
          height: 100.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index){
              if(index == 0){
                return containerMenu(name:'Home', icon: Icons.home, index: index);
              }else if(index == 1){
                return containerMenu(name:'Feed', icon: Icons.feedback_rounded, index: index);
              }else if(index == 2){
                return containerMenu(name:'Perfil', icon: Icons.person, index: index);
              }else if(index == 3){
                return containerMenu(name:'Settings', icon: Icons.settings, index: index);
              }
            }
          )
        )
      ),
    );
  }

  Widget containerMenu({String name, IconData icon, int index}){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          _onItemTapped(index);
        },
        child: Container(
          width: 120,
          height: 10,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey[300],
                offset: Offset(1.0, 1.0),
                blurRadius: 10.0,
              ),
            ],
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Icon(icon, size: 30,
                  color: Colors.white
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 6),
                child: Text(name, style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              )
            ],
          ),
        )
      ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
        _selectedIndex = index;
    });
  }
}