import 'package:flutter/material.dart';
import 'package:move_db/widgets/movie_list/movie_list.dart';

class MainScreenWidgets extends StatefulWidget {
  const MainScreenWidgets({super.key});

  @override
  State<MainScreenWidgets> createState() => _MainScreenWidgetsState();
}

class _MainScreenWidgetsState extends State<MainScreenWidgets> {
  int _selectedTab = 0;

  // static final List<Widget> _widgetOptions = <Widget>[
  //   const Text('Новости'),
  //   const MovieListWidget(),
  //   const Text('Сериалы'),
  //   const Text('Профиль')
  // ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N3FZ'),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          Text('Новости'),
          MovieListWidget(),
          Text('Сериалы'),
          Text('Профиль')
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Новости'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Фильмы'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Сериалы'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
