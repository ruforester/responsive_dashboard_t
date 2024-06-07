import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/const.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
              color: isSelected ? selectionColor : Colors.transparent,
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 13.0, horizontal: 7.0),
                    child: Icon(
                      data.menu[index].icon,
                      color: isSelected ? Colors.black : Colors.grey,
                    ),
                  ),
                  Text(
                    data.menu[index].title,
                    style: TextStyle(
                        color: isSelected ? Colors.black : Colors.grey),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
