// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chatter/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chatter/pages/calls_pages.dart';
import 'package:chatter/pages/contacts_pages.dart';
import 'package:chatter/pages/messages_page.dart';
import 'package:chatter/pages/notifications_pages.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier("Messages");
  final pages = const [
    MessagesPage(),
    NotificationsPage(),
    ContactsPage(),
    CallsPage()
  ];
  final pageTitles = const [
    "Messages",
    "Notifications",
    "Calls",
    "Contacts",
  ];

  void _onNavigationItemsSelected(index) {
    title.value = pageTitles[index];
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    //print("I build diffrent ");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ValueListenableBuilder(
          valueListenable: title,
          builder: (BuildContext context, String value, _) {
            return Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            );
          },
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (BuildContext context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottoNavigationBar(
        onItemsSelelcted: _onNavigationItemsSelected,
      ),
    );
  }
}

class _BottoNavigationBar extends StatefulWidget {
  const _BottoNavigationBar({
    Key? key,
    required this.onItemsSelelcted,
  }) : super(key: key);
  final ValueChanged<int> onItemsSelelcted;

  @override
  State<_BottoNavigationBar> createState() => _BottoNavigationBarState();
}

class _BottoNavigationBarState extends State<_BottoNavigationBar> {
  var selectedIndex = 0;
  void handelItemsSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemsSelelcted(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavigationBarItem(
              index: 0,
              label: "Messages",
              icon: CupertinoIcons.bubble_left_bubble_right_fill,
              isSelected: (selectedIndex == 0),
              onTap: handelItemsSelected),
          _NavigationBarItem(
              index: 1,
              label: "Notifications",
              icon: CupertinoIcons.bell_solid,
              isSelected: (selectedIndex == 1),
              onTap: handelItemsSelected),
          _NavigationBarItem(
              index: 2,
              label: "Calls",
              icon: CupertinoIcons.phone_fill,
              isSelected: (selectedIndex == 2),
              onTap: handelItemsSelected),
          _NavigationBarItem(
              index: 3,
              label: "Contacts",
              icon: CupertinoIcons.person_2_fill,
              isSelected: (selectedIndex == 3),
              onTap: handelItemsSelected),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppColors.secondary : null,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(label,
                style: isSelected
                    ? const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondary,
                      )
                    : const TextStyle(fontSize: 11)),
          ],
        ),
      ),
    );
  }
}
