import 'package:flutter/material.dart';
import 'package:myquizzapp/const.dart';
import 'package:myquizzapp/custom_widgets/listile.dart';

class UserDrawer extends StatelessWidget {
  UserDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Drawer(
      backgroundColor: Colors.blueAccent,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("images/user.jpg"),
                    radius: 30,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Ali",
                          style: userTextStyle,
                        ),
                        Text(
                          "jawad@gmail.com",
                          style: infotextStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.edit),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          MyListile(
            mainIcon: Icons.person,
            mainText: "Profile",
            func: () {},
          ),
          MyListile(
            mainIcon: Icons.group,
            mainText: "Friends",
            func: () {},
          ),
          MyListile(
            mainIcon: Icons.restart_alt,
            mainText: "Restart the game",
            func: () {
              // storyLine.restart();
            },
          ),
          MyListile(
            mainIcon: Icons.settings,
            mainText: "Advanced Settings!",
            func: () {},
          ),
        ],
      ),
    );
  }
}
