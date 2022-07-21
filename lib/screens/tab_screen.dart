import 'package:flutter/material.dart';
import 'package:meals_app/screens/favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': CatergoriesScreen(), 'title': 'Categories'},
    {'page': FavoriteScreen(), 'title': 'Favorities'}
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // DefaultTabController(
        //   length: 2,
        //   initialIndex: 1,
        //   child:
        Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),

        //     bottom: TabBar(
        //       tabs: const <Widget>[
        //         Tab(
        //           icon: Icon(
        //             Icons.category,
        //           ),
        //           text: 'Categories',
        //         ),
        //         Tab(
        //           icon: Icon(Icons.star),
        //           text: 'Fvorites',
        //         )
        //       ],
        //     ),
        //   ),
        //   body: TabBarView(
        //     children: const <Widget>[
        //       CatergoriesScreen(),
        //       FavoriteScreen(),
        //     ],
        //   ),
        // ),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: 'Favorities',
          )
        ],
      ),
    );
  }
}
