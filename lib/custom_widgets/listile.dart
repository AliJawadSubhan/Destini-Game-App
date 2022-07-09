import 'package:flutter/material.dart';

class MyListile extends StatelessWidget {
  MyListile({required this.mainText, required this.mainIcon, required this.func});
  final String mainText;
  final IconData mainIcon;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        // leading: Icon(Icons.person),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 15, 15, 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(mainIcon),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    mainText,
                    style: const TextStyle(fontSize: 17, color: Colors.white,)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
