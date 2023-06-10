import 'dart:ui';
import 'package:flutter/material.dart';
import 'portfolio-screen.dart';
import 'portfolio_list_screen.dart';
import 'login.dart';
import 'add-portfolio.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String? note; // Variable to store the note

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Developers'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PortfolioListScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Add Developers'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPortfolioScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PortfolioScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/portfolio-bg.jpg'), // Replace with your desired background image
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12), // Add padding around the text
                  color: Colors.cyan, // Set the background color
                  child: Text(
                    '''The functionality:''',
                    style: TextStyle(
                      color: Colors.black, // Set the text color
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(50),
                  color: Colors.cyan, //
                  child: Text(
                    '''When you launch the app, you'll see the Menu screen with a menu drawer in the top-left corner.
The menu drawer contains options like "Developers," "Add Developers," and "About." You can click on these options to navigate to different screens.
The Menu screen will be the main screen of the app, displaying the available options and functionalities.
You can select the "Developers" option to view a list of developers, the "Add Developers" option to add new developers, or the "About" option to view information about the app or project.
Each option will navigate to a different screen where you can perform specific actions related to that option.
You can navigate between screens using the menu drawer or any navigation elements provided within each screen.
The app provides a user-friendly interface for managing developers and accessing relevant information.''',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
