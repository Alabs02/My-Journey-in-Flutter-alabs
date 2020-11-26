import 'package:flutter/material.dart';

void main() => runApp(NinjaApp());

class NinjaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NinjaScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NinjaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          'Ninja Card',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
            fontSize: 20.0,
            color: Colors.grey[300]
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[700],
      ),
      body: NinjaBody(),
    );
  }
}

class NinjaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
      child: Column(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/skate.jpg'),
              radius: 60.0,
              backgroundColor: Colors.grey,
            ),
          ),

          SizedBox(height: 30.0,),

          Divider(color: Colors.grey[100],),

          SizedBox(height: 30.0),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0
                ),
              ),
              
              SizedBox(height: 10.0),

              Text(
                'Chun-Li',
                style: TextStyle(
                  color: Colors.amberAccent[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0
                ),
              ),

              SizedBox(height: 30.0),


              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0
                ),
              ),
              
              SizedBox(height: 10.0),

              Text(
                '8',
                style: TextStyle(
                  color: Colors.amberAccent[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0

                ),
              ),

              SizedBox(height: 30.0),

              Row(children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 20.0),
                Text(
                  'alabson.inc@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15.0
                  ),
                ),
              ],)

            ]
          ),

        ],
      ),
    );
  }
}
