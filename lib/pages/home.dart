import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List items = ['Burger', 'Chai', 'Coffee', 'Pizza', 'Dosa', 'Pasta'];
List images = [
  'asstes/burger.jpg',
  'asstes/chai.jpg',
  'asstes/coffee.jpg',
  'asstes/pizza.jpg',
  'asstes/dosa.jpg',
  'asstes/pasta.jpg'
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Image(
                image: AssetImage(images[index]),
                fit: BoxFit.fill,
                height: 200,
                width: 380,
              ),
              SizedBox(
                width: 380,
                child: ExpansionTile(
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    // // expandedAlignment: Alignment.topLeft,
                    textColor: Colors.red,
                    // backgroundColor: Colors.cyan,
                    // collapsedBackgroundColor: Colors.deepPurpleAccent,
                    title: Text(
                      items[index],
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.reviews_outlined),
                    ),
                    children: [
                      const Divider(
                        height: 1,
                        color: Colors.grey,
                        thickness: 3,
                      ),
                      Container(
                        height: 150,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: const SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            "A hamburger (or burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. ... A hamburger topped with cheese is called a cheeseburger.",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
            // child: ExpansionTile(
            //   backgroundColor: Colors.cyanAccent,
            //   tilePadding: const EdgeInsets.all(10),
            //   leading: CircleAvatar(
            //     radius: 50,
            //     child: Image(
            //       image: AssetImage(images[index]),
            //       alignment: Alignment.center,
            //       width: 100,
            //       height: 100,
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            //   title: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     children: [
            //       Container(
            //         alignment: Alignment.topLeft,
            //         child: Text(
            //           items[index],
            //           textDirection: TextDirection.ltr,
            //         ),
            //       )
            //     ],
            //   ),
            //   subtitle: const Text('Description'),
            //   children: const [Text("Price = 50")],
            // ));
          );
        });
  }
}
