import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Body(),
    Body(),
    Body(),
    Body(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.menu),
        backgroundColor: Color(0xFF053746),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavyBar(
          backgroundColor: Color(0xFF053746),
          items: [
            BottomNavyBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              title: Text(
                'Home',
              ),
              activeColor: Colors.grey,
              inactiveColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              title: Text(
                'Profile',
              ),
              activeColor: Colors.grey,
              inactiveColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.notifications_outlined,
              ),
              title: Text(
                'Notification',
              ),
              activeColor: Colors.grey,
              inactiveColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.favorite_outline,
              ),
              title: Text(
                'Favorite',
              ),
              activeColor: Colors.grey,
              inactiveColor: Colors.white,
            ),
          ],
          selectedIndex: _selectedIndex,
          onItemSelected: _onItemTap,
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Foreground(),
          Positioned(
            top: 20,
            left: 170,
            child: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 70,
            left: 150,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/profile.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class Foreground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190,
          decoration: BoxDecoration(
              color: Color(0xFF053746),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: ListTile(
            title: Center(
                child: Text(
              'Naeem',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            subtitle: Center(
              child: Text("User bio User bio User bio User bio User bio"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFE0F2F1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.pin_drop_outlined,
                    size: 35,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                Text('naeem@gmail.com')
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFE0F2F1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.phone_outlined,
                    size: 35,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                Text('03086999073')
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFE0F2F1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.language_outlined,
                    size: 35,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Languages user speaks')
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFE0F2F1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    size: 35,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Edit Information')
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFE0F2F1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.logout,
                    size: 35,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                Text('log out from your account')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
