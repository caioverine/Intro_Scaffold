import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  void _onPress() {

    print("Search tapped!");
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      appBar: AppBar (
        backgroundColor: Colors.indigoAccent,
        title: Text ("Fency Day"),
        actions: <Widget>[
          IconButton (
            icon: Icon(Icons.send),
            onPressed: () => debugPrint("send icon tapped!")
          ),
          IconButton (
            icon: Icon(Icons.search),
            onPressed: _onPress,
            )
        ]
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bonni",
              style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w400,
                color: Colors.deepOrange
              )
            ),
            InkWell(
              child: Text("button"),
              onTap: () => debugPrint("Button tapped!")
            )
          ]
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("Pressed!"),
        backgroundColor: Colors.white12,
        tooltip: "Going up!",
        child: Icon(Icons.check)
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Hey!")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            title: Text("Nope!")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_missed),
            title: Text("Hello!")
          )
        ],
        onTap: (int i) => debugPrint("Touched index $i")
      )
    );
  }
}