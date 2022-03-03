// ignore_for_file: import_of_legacy_library_into_null_safe, deprecated_member_use, prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  double percent = 0;
  bool value = true;
  double ava = 0;
  late Timer timer;
  @override
  initState() {
    timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
      setState(() {
        percent += 0.1;
        ava += 10;
        if (percent > 1) {
          timer.cancel();
          value = !value;
          percent = 0;
        }
      });
    });
    super.initState();
  }

  // final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      // shrinkWrap: false,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          visualDensity: const VisualDensity(horizontal: 1, vertical: 1),
          child: const Text("Flat Button"),
          textTheme: ButtonTextTheme.primary,
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text("Alert Dialog title"),
                    content: const Text("Alert Dialog description"),
                    actions: [
                      TextButton(
                        // style: TextButton.styleFrom(
                        //     backgroundColor: Colors.red.shade300,
                        //     shadowColor: Colors.amber,
                        //     textStyle: TextStyle(color: Colors.black)),
                        onPressed: () => Navigator.pop(context, 'Cancle'),
                        child: const Text(
                          "Cancle",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                          // style: TextButton.styleFrom(
                          //     backgroundColor: Colors.red.shade300,
                          //     shadowColor: Colors.amber,
                          //     textStyle: TextStyle(color: Colors.black)),
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            "ok",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                    // buttonPadding: EdgeInsets.all(15),
                    // scrollable: true,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10),
                    // side: BorderSide(width: 2, color: Colors.black))
                  )),
        ),
        ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black))),
            ),
            onPressed: () => showDialog(
                context: context,
                barrierDismissible: false,
                barrierColor: Colors.white24,
                // barrierLabel: "hello",
                builder: (BuildContext context) => SimpleDialog(
                      backgroundColor: Colors.deepPurpleAccent,
                      title: const Text("Simple Dialog"),
                      children: [
                        SimpleDialogOption(
                          onPressed: () => Navigator.pop(context),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.green,
                                    size: 30,
                                  ),
                                  Text("user1@gmail.com",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Text("user1@gmail.com",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.add_circle,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Text("add account",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
            child: const Text("Elevated Btn")),
        RaisedButton(
          child: const Text("RaisedBTN"),
          // onHighlightChanged: (value) {
          //   print(value);
          // },
          // textTheme: ButtonTextTheme.normal,
          textColor: Colors.deepOrange.shade900,
          disabledColor: Colors.pink.shade600,
          highlightColor: Colors.green,
          color: Colors.deepPurple.shade500,
          splashColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          colorBrightness: Brightness.light,
          // elevation: 25,
          // shape: Border.all(width: 3, color: Colors.black),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: const BorderSide(width: 1, color: Colors.red)),
          highlightElevation: 20,
          onPressed: () {},
        ),
        TextButton(
          onPressed: () {},
          child: const Text("TextBTN"),
          style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.amber,

              // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              // backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              // overlayColor: MaterialStateProperty.all(Colors.deepOrange),
              side: const BorderSide(width: 2, color: Colors.cyan),
              elevation: 10,
              shadowColor: Colors.transparent,
              minimumSize: const Size(50, 50),
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
            icon: const Icon(Icons.account_box),
            label: const Text("BTN")),

        const SizedBox(
          height: 15,
        ),
        CircularPercentIndicator(
          radius: 120.0,
          lineWidth: 10.0,
          animation: false,
          percent: percent,
          animateFromLastPercent: true,
          // addAutomaticKeepAlive: false,
          center: value
              ? Text(
                  (ava).toString() + "%",
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              : Icon(
                  Icons.done,
                  size: 50,
                  color: Colors.green,
                ),
          backgroundColor: Colors.grey.shade300,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Colors.redAccent,
        ),
        LinearPercentIndicator(
          fillColor: Colors.green,
          percent: .5,
          progressColor: Colors.amber,
        ),
        const SizedBox(
            // width: 400,
            // height: 10,
            child: LinearProgressIndicator(
          backgroundColor: Colors.black54,
          valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
          minHeight: 2,
        )),

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
