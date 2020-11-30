import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children:[
              SizedBox(height: 10,),
              Container(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Your name info here', 
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                                ),
                                Text('email@teste.com', 
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey[400]
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]
                      )
                    )
                  ]
                ),
              ),
              contentInfo(),
              SizedBox(height: 10,),
              contentInfo(),
              SizedBox(height: 10,),
              contentInfo(),
              SizedBox(height: 10,),
              contentInfo()




            ]
          )
        ),
      ),
    );
  }

  Widget contentInfo(){
    return Container(
      color: Colors.blue,
      height: 150,
      child: Row(
        children:[
          SizedBox(width: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey[100],
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: 220,
                  color: Colors.grey[100],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 10,
                  width: 180,
                  color: Colors.grey[100],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 10,
                  width: 100,
                  color: Colors.grey[100],
                )
              ],
            )
          )
        ]
      ),
    );
  }
}