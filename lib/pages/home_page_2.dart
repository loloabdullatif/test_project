import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  String title = 'helo';
  TextEditingController controller = TextEditingController();
  Color containerColor = Colors.cyan;
  Color containerColor1 = Colors.transparent;
  double x = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application'),
        backgroundColor: Colors.pink[200],
        actions: [Icon(Icons.logout)],
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              color: containerColor,
              width: x,
              height: x,
            ),
            Container(
              color: Colors.green,
              width: 20,
              height: 20,
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(title),
            color: containerColor1,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            child: TextField(
              controller: controller,
            ),
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                x *= 2;
                containerColor = Colors.pink;
                title = controller.text;
                containerColor1 = Colors.red;
                setState(() {});
              },
              child: Text('data')),
        ],
      ),
    );
  }
}
