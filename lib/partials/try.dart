import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clanex',
          style: TextStyle(
              color: Colors.grey[700],
              fontSize: 20.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: HomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Cliked");
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey[600],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      color: Colors.grey[50],
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
            child: Expanded(child: Image.asset('assets/skate.jpg')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton.icon(
                onPressed: () {
                  print('Learning!!!');
                },
                label: Text('Explore'),
                icon: Icon(Icons.speed),
              ),

              IconButton(
                icon: Icon(Icons.read_more), 
                onPressed: () {}
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),
              ),
            ],
          ),


          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Rigel'
                  ),
                  color: Colors.cyan
                ),

                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'moon'
                  ),
                  color: Colors.grey[200]
                ),

                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    'Sun'
                  ),
                  color: Colors.amber
                ),
              ],
            ),
          ),

          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Text('1'),
                  padding: EdgeInsets.all(20.0),
                  color: Colors.red
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Text('2'),
                  padding: EdgeInsets.all(20.0),
                  color: Colors.pink
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Text('3'),
                  padding: EdgeInsets.all(20.0),
                  color: Colors.amber
                ),
              ),
            ],
          ),

          
        ],
      ),
    );
  }
}
