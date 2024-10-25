import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/constants/routing/routing.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/calls/presentaion/views/calls_view.dart';
import 'package:mentor_academy_live_task/features/chats/presentation/views/chat_view.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/status_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ChatsView(),
    const StatusView(),
    const CallsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPopupMenuSelected(String value) {
    switch (value) {
      case 'New Group':
        // Handle New Group action
        break;
      case 'Profile':
        Navigator.pushNamed(context, Routing.profileRoute);
        break;
      case 'Logout':
        // Handle Logout action
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsUp',
          style: Styles.textStyle24,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          PopupMenuButton<String>(
            onSelected: _onPopupMenuSelected,
            icon: const Icon(Icons.more_vert, size: 32),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'New Group',
                child: Text('New Group'),
              ),
              const PopupMenuItem<String>(
                value: 'Profile',
                child: Text('Profile'),
              ),
              const PopupMenuItem<String>(
                value: 'Logout',
                child: Text('Logout'),
              ),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: ColorApp.primaryColor,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_rounded, color: ColorApp.primaryColor),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, color: ColorApp.primaryColor),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorApp.primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
