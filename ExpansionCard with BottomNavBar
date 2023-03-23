import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTileCard',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'GeeksForGeeks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ExpansionTileCard(
                key: cardA,
                leading: const CircleAvatar(child: Text('A')),
                title: const Text('Tap to Expand!'),
                subtitle: const Text('It has the GFG Logo.'),
                children: <Widget>[
                  const Divider(
                    thickness: 5.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Image.asset('assets/images/2.png')
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ExpansionTileCard(
                key: cardB,
                leading: const CircleAvatar(child: Text('A')),
                title: const Text('Tap to Expand 2!'),
                subtitle: const Text('It has the GFG Logo.'),
                children: <Widget>[
                  const Divider(
                    thickness: 5.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 16.0,
                        ),
                        child: Image.asset('assets/images/wall.jpg')
                    ),
                  ),
                ],
              ),
            ),
          ],
      ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              fixedColor: Colors.green,
              items: const [
              BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
              label: "Financials",
              icon: Icon(Icons.money_rounded),
              ),
              BottomNavigationBarItem(
              label: "Academic",
              icon: Icon(Icons.book),
                ),
              ],
            ),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Steven Jake Asoy",
                  style: TextStyle(fontSize: 14.0),
                ),
                accountEmail: Text("asoy.steven_jake@hnu.edu.ph"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ),
                ),
              ),
            ),

            // Details inside drawer: Content //
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("April 4, 2003"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("BS Computer Science - 3"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ], //children
        ),
      ),

    );
  }
}
