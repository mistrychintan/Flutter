// ignore: import_of_legacy_library_into_null_safe
// import 'package:day_6/main.dart';

import 'package:day_6/pages/call.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      // shrinkWrap: false,

      children: [
        ExpansionTileCard(
          shadowColor: Colors.deepOrange,
          // key: cardA,
          baseColor: Colors.cyan,
          expandedColor: Colors.greenAccent,
          leading: Image.asset(
            'asstes/hulk.jpg',
            fit: BoxFit.cover,
          ),
          title: const Text('Tap to Expand'),
          subtitle: const Text('It has GFG logo'),
          children: const [
            Divider(
              thickness: 1.0,
              height: 1.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                    'FlutterDevs specializes in creating cost-effective and efficient'
                    ' applications with our perfectly crafted,creative and '
                    'leading-edge flutter app development solutions for customers '
                    'all around the globe.'),
              ),
            )
          ],
        ),
        FlatButton(
          // clipBehavior: Clip.antiAliasWithSaveLayer,
          // focusColor: Colors.black,
          // elevation: 50,
          // highlightElevation: 5,
          disabledColor: Colors.amber,
          color: Colors.blueAccent,
          hoverColor: Colors.deepOrange,
          focusColor: Colors.amber,
          highlightColor: Colors.black,
          splashColor: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          visualDensity: VisualDensity(horizontal: 1, vertical: 1),
          child: Text("Flat Button"),
          textTheme: ButtonTextTheme.primary,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CallPage()));
          },
        ),
        ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.black))),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CallPage()));
            },
            child: Text("Elevated Btn")),
        RaisedButton(
          child: Text("RaisedBTN"),
          // onHighlightChanged: (value) {
          //   print(value);
          // },
          // textTheme: ButtonTextTheme.normal,
          textColor: Colors.deepOrange.shade900,
          disabledColor: Colors.pink.shade600,
          highlightColor: Colors.green,
          color: Colors.deepPurple.shade500,
          splashColor: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          colorBrightness: Brightness.light,
          // elevation: 25,
          // shape: Border.all(width: 3, color: Colors.black),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(width: 1, color: Colors.red)),
          highlightElevation: 20,
          onPressed: () {},
        ),
        TextButton(
          onPressed: () {},
          child: Text("TextBTN"),
          style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.amber,

              // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              // backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              // overlayColor: MaterialStateProperty.all(Colors.deepOrange),
              side: BorderSide(width: 2, color: Colors.cyan),
              elevation: 10,
              shadowColor: Colors.transparent,
              minimumSize: Size(110, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              // padding: EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 2),
              textStyle: const TextStyle(
                fontSize: 15,
                // fontStyle: FontStyle.italic,
                // fontFamily: "alex",
              )),
        ),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.account_box),
            label: Text("BTN")),
        // FloatingActionButtonLocation.endDocked;

        // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
          splashColor: Colors.cyan,
          mini: true,
          onPressed: () {},
        ),
        Ink(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_circle),
            // color: Colors.deepOrange,
            highlightColor: Colors.red.shade100,
            // focusColor: Colors.white,
            // splashRadius: 100,
            splashColor: Colors.white,
            tooltip: "Play vedio",

            iconSize: 50,
          ),
          decoration: ShapeDecoration(
              color: Colors.cyan,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(15))),
        ),

        // decoration: BoxDecoration(
        //     border: Border.all(width: 2, color: Colors.black),
        //     borderRadius: BorderRadius.circular(50)),
        // padding: EdgeInsets.only(
        //   left: 100,
        //   right: 100,
        // ),
      ],
    );
  }
}
