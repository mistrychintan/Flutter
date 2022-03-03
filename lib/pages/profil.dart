import 'package:flutter/material.dart';

class CarPage extends StatefulWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 50.0);
  ScrollController _scroll = ScrollController(initialScrollOffset: 50.0);
  List items = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5'
  ];
  // List item = ['item'  , 'item 2', 'item 3', 'item 4', 'item 5'];
  // void _arrowchange() {
  //   return ExpansionTile(
  //     title: Text("Hello"),
  //   ),;
  bool _isExpanded = false;
  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      print(_scrollController.position.pixels);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent - 0) {
        // if we are the bottom of the page
        //millisecs += 1500;
        //super.initState();
      }
    });
    super.initState();
    _scroll = new ScrollController();
    _scroll.addListener(() {
      print(_scroll.position.pixels);
      if (_scroll.position.pixels == _scroll.position.maxScrollExtent - 0) {
        // if we are the bottom of the page
        //millisecs += 1500;
        //super.initState();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        showTrackOnHover: true,
        hoverThickness: 30.0,
        controller: _scrollController,
        child: ListView(
          // controller: _scrollController,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionTile(
                      title: Text(items[index]),
                      tilePadding: const EdgeInsets.all(5),
                      backgroundColor: Colors.blue,
                      children: [
                        ListView.builder(
                          controller: _scroll,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ExpansionTile(
                              title: const Text(
                                "hello",
                                style: TextStyle(color: Colors.black),
                              ),
                              // collapsedBackgroundColor: Colors.white,
                              collapsedTextColor: Colors.black,
                              trailing: SizedBox.shrink(),
                              onExpansionChanged: (value) {
                                setState(() {
                                  _isExpanded = value;
                                });
                              },
                              // leading: Icon(
                              //   Icons.arrow_downward,
                              //   color: Colors.black,
                              // ),
                              controlAffinity: ListTileControlAffinity.leading,
                              collapsedIconColor: Colors.black,
                              leading: AnimatedRotation(
                                turns: _isExpanded ? .5 : 0,
                                duration: Duration(milliseconds: 500),
                                child: const Icon(
                                  Icons.arrow_downward,
                                  color: Colors.black,
                                ),
                              ),
                              children: [
                                ListView.builder(
                                    controller: _scroll,
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: items.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return const ListTile(
                                        title: Text("tushar"),
                                      );
                                    }),
                              ],
                            );
                            // return ListTile(
                            //   title: Text(items [index]),
                            // );
                          },
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
