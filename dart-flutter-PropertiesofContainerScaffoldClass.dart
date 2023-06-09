import 'package:flutter/material.dart';

void main() => runApp(const GFGapp());
//runApp(const GFGapp());

class GFGapp extends StatelessWidget {
  final appTitle = 'HNU MIS (development stage)';

  const GFGapp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
        child: Scaffold(
          appBar: AppBar(
            /////**** Tab Bar
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.announcement)),
                Tab(icon: Icon(Icons.newspaper)),
              ],
            ),
            title: Text(title,
              style: const TextStyle(fontSize: 16),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.comment),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.green,
          ),

          // Main Body //
          body: const DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/wall.jpg"), opacity: 100, fit: BoxFit.cover),
            ),
            child: Center(
                child: FlutterLogo(
                  size: 100,
                )),
          ),

          // Drawer //
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

          // BOTTOM MENU //
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

                //////********* END BOTTOM NAV BAR *********//////
              ],
              onTap: (int indexOfItem) {}),
        ),
    );
  }
}
