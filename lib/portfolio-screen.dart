import 'dart:ui';
import 'package:flutter/material.dart';
import 'portfolio_list_screen.dart';
import 'add-portfolio.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  bool isLoggedIn = false; // Add this line to declare and initialize isLoggedIn

  void _authenticate() {
    // Implement your authentication logic here
    // Set the isLoggedIn variable to true if the authentication is successful
    setState(() {
      isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Stack(
        children: [
          // Background with blur effect
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/portfolio-bg.jpg'), // Replace with your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/portfolio-img.png'),
                ),
                SizedBox(height: 16),
                Text(
                  'Najibullah Jafari',
                  style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Software Developer',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 16),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('najib2020202020@gmail.com'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('+93793647446'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.link),
                    title: Text('www.najib.af.com'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddPortfolioScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Set the background color
                      onPrimary: Colors.white, // Set the text color
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Arial', // Set the desired font
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Add Portfolio'),
                  ),
                ),


                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PortfolioListScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the background color
                    onPrimary: Colors.black, // Set the text color
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Arial', // Set the desired font
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Developers'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}