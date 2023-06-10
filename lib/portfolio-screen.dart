import 'dart:ui';
import 'package:flutter/material.dart';
import 'portfolio_list_screen.dart';
import 'add-portfolio.dart';
import 'package:url_launcher/url_launcher.dart';


class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  bool isLoggedIn = false;

  void _authenticate() {

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
          SingleChildScrollView(
            child: Center(
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

                  ElevatedButton(
                    onPressed: _launchGitHubURL,
                    child: Text('Open GitHub'),
                  ),

                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text('Here we connect the world! No problem where you are but you will still be connected around the world from East to West! Happy!'),
                    ),
                  ),
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
                    child: GestureDetector(
                      onTap: () async {
                        const url = 'https://www.najib.af.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: ListTile(
                        leading: Icon(Icons.link),
                        title: Text('www.najib.af.com'),
                      ),
                    ),
                  ),

                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/ali.png'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Aliullah Wakili',
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Software Developer',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text('Here we connect the world! No problem where you are but you will still be connected around the world from East to West! Happy!'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: ListTile(
                      leading: Icon(Icons.email),
                      title: Text('ali01@gmail.com'),
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
                      title: Text('www.ali01.com'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
_launchGitHubURL() async {
  const url = 'https://github.com/najibullahjafari/flutter-portfolio'; // Replace with your GitHub URL
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
