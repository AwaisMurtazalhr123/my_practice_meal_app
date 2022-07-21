import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tab_screen.dart';
import './screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: Color.fromRGBO(225, 254, 229, 1),
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              // bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              // bodyText2: TextStyle(color: Color.fromRGBO(20, 53, 51, 1)),
              titleMedium: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CatergoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   // print(settings.arguments);
      //   return MaterialPageRoute(builder: (ctx) => CatergoriesScreen());
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CatergoriesScreen());
      },
    );
  }
}
