import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'portfolio.dart';
import 'package:uuid/uuid.dart';
class PortfolioProvider {
  final _prefsKey = 'portfolios';

  Future<SharedPreferences> _getPreferences() async {
    return await SharedPreferences.getInstance();
  }

  Future<List<Portfolio>> getPortfolios() async {
    final preferences = await _getPreferences();
    final portfoliosJson = preferences.getStringList(_prefsKey);
    if (portfoliosJson != null) {
      final List<Map<String, dynamic>> portfolios = portfoliosJson
          .map((portfolioJson) =>
      jsonDecode(portfolioJson) as Map<String, dynamic>)
          .toList();
      final List<Portfolio> portfolioList = portfolios
          .map<Portfolio>((portfolioData) => Portfolio.fromJson(portfolioData))
          .toList();
      return portfolioList;
    } else {
      return [];
    }
  }


  Future<void> savePortfolio(Portfolio portfolio) async {
    final preferences = await _getPreferences();
    final portfoliosJson = preferences.getStringList(_prefsKey);

    final updatedPortfolio = Portfolio(
      id: Uuid().v4(),
      // Generate a unique ID using the uuid package
      name: portfolio.name,
      job: portfolio.job,
      email: portfolio.email,
      phoneNumber: portfolio.phoneNumber,
      website: portfolio.website,
      address: portfolio.address,
      description: portfolio.description,
    );

    if (portfoliosJson != null) {
      final List<Map<String, dynamic>> portfolios = portfoliosJson
          .map((portfolioJson) =>
      jsonDecode(portfolioJson) as Map<String, dynamic>)
          .toList();
      portfolios.add(updatedPortfolio.toJson());
      final updatedPortfoliosJson =
      portfolios.map((portfolio) => jsonEncode(portfolio)).toList();
      preferences.setStringList(_prefsKey, updatedPortfoliosJson);
    } else {
      preferences.setStringList(
          _prefsKey, [jsonEncode(updatedPortfolio.toJson())]);
    }
  }
}