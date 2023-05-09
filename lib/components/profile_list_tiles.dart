import 'package:flutter/material.dart';

class ProfileListTiles extends StatelessWidget {
  IconData leadingIcon;
  String title;
  ProfileListTiles({super.key, required this.leadingIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            leadingIcon,
            color: Color(0xfffe6242),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          tileColor: Color(0xff1f1f1f),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        )
      ],
    );
  }
}
