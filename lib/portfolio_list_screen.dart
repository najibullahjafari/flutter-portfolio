import 'dart:ui';

import 'package:flutter/material.dart';
import 'portfolio.dart';
import 'portfolio_provider.dart';
class PortfolioListScreen extends StatelessWidget {
  final PortfolioProvider _portfolioProvider = PortfolioProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio List'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/portfolio-bg.jpg'), // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust the sigma values to control the blur intensity
          child: FutureBuilder<List<Portfolio>>(
            future: _portfolioProvider.getPortfolios(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final List<Portfolio> portfolios = snapshot.data!;
                if (portfolios.isNotEmpty) {
                  return ListView.builder(
                    itemCount: portfolios.length,
                    itemBuilder: (context, index) {
                      final Portfolio portfolio = portfolios[index];
                      return Card(
                        child: ListTile(
                          title: Text(
                            portfolio.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                portfolio.description,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                              _buildJobRow(portfolio.job),
                              _buildContactRow(Icons.email, portfolio.email, Colors.orange),
                              _buildContactRow(Icons.phone, portfolio.phoneNumber, Colors.red),
                              _buildContactRow(Icons.location_on, portfolio.address, Colors.purple),
                              _buildContactRow(Icons.link, portfolio.website, Colors.teal),
                            ],
                          ),
                          onTap: () {
                            // Handle portfolio selection
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('No portfolios available'),
                  );
                }
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildJobRow(String job) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(Icons.work, color: Colors.green),
          SizedBox(width: 8),
          Text(
            job,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String text, Color iconColor) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
