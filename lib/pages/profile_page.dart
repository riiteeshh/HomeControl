import 'package:flutter/material.dart';
import 'package:home_control/components/profile_list_tiles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.amber,
              child: ClipOval(
                  child: Image.network(
                      'https://previews.123rf.com/images/metelsky/metelsky1809/metelsky180900233/109815470-man-avatar-profile-male-face-icon-vector-illustration.jpg')),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              child: Text(
                'Ritesh Pandey',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              child: Text(
                'pandeyritesh048@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfffe6242),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  onPressed: () {
                    showModalSheet();
                  },
                  icon: Icon(Icons.qr_code),
                  label: Text(
                    'Your QR',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              color: Color(0xff1f1f1f),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  ProfileListTiles(
                      leadingIcon: Icons.person_2_rounded,
                      title: 'Your Information'),
                  ProfileListTiles(
                      leadingIcon: Icons.device_hub_rounded,
                      title: 'Your Devices'),
                  ProfileListTiles(
                      leadingIcon: Icons.people_alt_rounded,
                      title: 'Users Management'),
                  ProfileListTiles(
                      leadingIcon: Icons.logout_rounded, title: 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showModalSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        builder: (context) {
          return Container(
            //color: Color(0xff1f1f1f),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png',
                // color: Color(0xff1f1f1f),
              ),
            ),
          );
        });
  }
}
