import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Widget Dynamically',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _cardList = [];

  void _addCardWidget() {
    setState(() {
      _cardList.add(_card());
    });
  }

  Widget _card() {
    return Container(
      height: 80,
      margin: EdgeInsets.only(top: 5, left: 8, right: 8),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.orangeAccent[100],
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/71/83/70/7183704aac01413c86805c19c1586e2b.jpg"),
            ),
          ),
          title: Text(
            "Freedom Fighter",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple),
          ),
          subtitle: Text(
            'Freedom Fighter',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
          trailing: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('5',
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                    SizedBox(
                      width: 1,
                    ),
                    Icon(
                      Icons.access_alarms_outlined,
                      textDirection: TextDirection.rtl,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Add Widget Dynamically"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
            itemCount: _cardList.length,
            itemBuilder: (context, index) {
              return _cardList[index];
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCardWidget,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
