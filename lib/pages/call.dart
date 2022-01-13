import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            // key: Key('hello'),
            flex: 1,
            child: Container(
              // child: const Text("Helli",
              //     style: TextStyle(
              //       fontSize: 40,
              //       color: Colors.white,
              //       decorationStyle: TextDecorationStyle.wavy,
              //     ),
              //     textDirection: TextDirection.ltr),
              height: 300,
              // width: 400,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('asstes/ironman.jpg'),
                    fit: BoxFit.fill,
                  ),
                  border:
                      Border.all(width: 5, color: (Colors.lightGreenAccent)),
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink, Colors.deepOrangeAccent])),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                height: 300,
                // width: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('asstes/ironman.jpg'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(width: 5, color: Colors.black),
                    borderRadius: BorderRadius.circular(10))),
          ),
          Expanded(
            flex: 1,
            child: Container(
                height: 300,
                // width: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('asstes/ironman.jpg'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(20))),
          ),
        ],
      ),
    );
  }
}
