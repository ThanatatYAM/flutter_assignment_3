import 'package:flutter/material.dart';

void main() {
  runApp(const pinLock());
}

class pinLock extends StatefulWidget {
  const pinLock({super.key});

  @override
  State<pinLock> createState() => _pinLockState();
}

class _pinLockState extends State<pinLock> {
  var list = ["_", "_", "_", "_", "_", "_"];
  var counter = 0;
  Widget buildButton(String number, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          list[counter] = number;
          counter++;
        });
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        width: 70,
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(label)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PIN LOCK',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(Icons.security, size: 50),
                    SizedBox(height: 5),
                    Text("PIN LOCK", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(list[0],
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(list[1],
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(list[2],
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(list[3],
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(list[4],
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(list[5],
                            style: TextStyle(fontSize: 20, color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildButton("1", "one"),
                          SizedBox(width: 20),
                          buildButton("2", "two"),
                          SizedBox(width: 20),
                          buildButton("3", "three"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildButton("4", "four"),
                          SizedBox(width: 20),
                          buildButton("5", "five"),
                          SizedBox(width: 20),
                          buildButton("6", "six"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildButton("7", "seven"),
                          SizedBox(width: 20),
                          buildButton("8", "eight"),
                          SizedBox(width: 20),
                          buildButton("9", "nine"),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  list = ["_", "_", "_", "_", "_", "_"];
                                  counter = 0;
                                });
                              },
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  child: Icon(Icons.close))),
                          SizedBox(width: 20),
                          buildButton("0", "zero"),
                          SizedBox(width: 20),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (counter > 0) {
                                    counter--;
                                  }
                                  list[counter] = "_";
                                });
                              },
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  child: Icon(Icons.backspace_outlined))),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
