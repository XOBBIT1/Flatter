import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: UserPanel(), 
));

class UserPanel extends StatefulWidget {
  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  
  int _count = 0;
  String _str = 'Ты лох';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("For LOX"),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
        children:  [
            Padding(padding: EdgeInsets.only(top: 30)),
            Text('Lox Ultra', style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
              fontFamily: "Righteous-Regular"
            )),
            CircleAvatar(
              backgroundImage: AssetImage('assets/Eg0Ov27U4AEk5MS.png'),
              radius: 30,
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Icon(Icons.mail_outline, size: 25,),
                Text("admin@gmail.com", style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: "Righteous-Regular"
                ),)
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10),),
            Text('$_str*x: $_count', style: TextStyle(color: Colors.black, fontFamily: "Righteous-Regular"),),

        ]
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
            _str;
          });
        },
        child: Icon(Icons.ac_unit),
        backgroundColor: Colors.red,
      ),
    );
  }
}

