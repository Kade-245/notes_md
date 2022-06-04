// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Notes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _cardList = [];

  void _addCardWidget() {
    setState(() {
      _cardList.add(_card());
    });
  }

  Widget _card() {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromARGB(0, 212, 30, 30),
      ),
      child: Center(
        child: ListTile(
          // leading: CircleAvatar(
          //   radius: 28,
          //   backgroundColor: Colors.white,
          //   child: CircleAvatar(
          //     radius: 26,
          //     backgroundImage: NetworkImage("https://i.imgur.com/PPmzPkt.png"),
          //   ),
          // ),
          title: Text(
            "My Note",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple),
          ),
          subtitle: Text(
            'Contents',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 215, 106, 106)),
          ),
          // trailing: Card(
          //   elevation: 1,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(15.0),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.all(5.0),
          //     child: Container(
          //       width: 50,
          //       child: Row(
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: const [
          //   Text('5',
          //       style: TextStyle(fontSize: 20, color: Colors.blue)),
          //   SizedBox(
          //     width: 1,
          //   ),
          // Icon(
          //   Icons.access_alarms_outlined,
          //   textDirection: TextDirection.rtl,
          //   size: 20,
          //   color: Colors.blue,
          // )
          // ],
        ),
      ),
      //         ),
      //       ),
      //     ),
      //   ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Add Widget Dynamically"),
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
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
