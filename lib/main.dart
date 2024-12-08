import 'package:flutter/material.dart';

void main() {
    runApp(MyFirstApp());
}


class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstApp();
  }
}


class FirstApp extends State<MyFirstApp> {

   late bool loading;
   late double something;

  @override
  void initState () {
    loading = false;
    something = 0.0;

    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: loading ? Text(
          "Title",
          style: TextStyle(
            color: Colors.white,
          ),
          ) : Text(
          "Dick",
          style: TextStyle(
            color: Colors.white,
          ),
          ) ,
        centerTitle: true,
      ),
      body: Column(
        children: [
          LinearProgressIndicator(value: 23,),
          Text('efef'),
          FloatingActionButton(onPressed: () => {
              setState(() {
                loading = true;
              }),
            })
        ],
      )
    ),
    );

  }
  }
