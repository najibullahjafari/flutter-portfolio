import 'dart:ui';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'portfolio.dart';
import 'portfolio_provider.dart';
import 'portfolio-screen.dart';
import 'add-portfolio.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Portfolio',
    theme: ThemeData(
      primarySwatch: Colors.cyan,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: PortfolioApp(),
  ));
}


