import 'dart:ui';

import 'package:delimeals/screens/category_meals.dart';
import 'package:delimeals/screens/filters.dart';
import 'package:delimeals/screens/meal_detail.dart';
import 'package:delimeals/screens/tabs.dart';
import 'package:flutter/material.dart';

import 'package:delimeals/screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli meals',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.teal,
          canvasColor: Color.fromRGBO(254, 251, 243, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
      home: TabScreen(),
      routes: {
        '/categories': (ctx) => CategoryMealScreen(),
        '/categories/meal': (ctx) => MealDetailScreen(),
        '/settings': (ctx) => FilterScreen(),
      },
      onUnknownRoute: (setting) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
