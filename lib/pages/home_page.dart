import 'package:flutter/material.dart';
import 'package:home_control/components/control_component_class.dart';
import 'package:home_control/components/control_components.dart';
import 'package:home_control/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List color = [0xff1f1f1f, 0xff1f1f1f, 0xff1f1f1f, 0xff1f1f1f];
  // List switchStatus = [false, false, false, false];
  // List status = ['OFF', 'OFF', 'OFF', 'OFF'];
  List<ControlComponentClass> componentDetails = [
    ControlComponentClass(
        color: 0xff1f1f1f,
        status: 'OFF',
        switchStatus: false,
        componentIcon: Icons.lightbulb_rounded,
        componentName: 'Bulb'),
    ControlComponentClass(
        color: 0xff1f1f1f,
        status: 'OFF',
        switchStatus: false,
        componentIcon: Icons.tv_rounded,
        componentName: 'Smart TV'),
    ControlComponentClass(
        color: 0xff1f1f1f,
        status: 'OFF',
        switchStatus: false,
        componentIcon: Icons.air_rounded,
        componentName: 'Air Conditioner'),
    ControlComponentClass(
        color: 0xff1f1f1f,
        status: 'OFF',
        switchStatus: false,
        componentIcon: Icons.wifi,
        componentName: 'Wi-Fi'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteManager.settingsPage);
              },
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                child: ClipOval(
                  child: Image.network(
                      'https://previews.123rf.com/images/metelsky/metelsky1809/metelsky180900233/109815470-man-avatar-profile-male-face-icon-vector-illustration.jpg'),
                ),
              ),
            ),
          )
        ],
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Good Morning, Ritesh',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '1 Devices are active now.',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.13,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xff2c1f21),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.transparent,
                            child: Image.network(
                                'https://thumbs.dreamstime.com/b/cloud-rain-icon-white-weather-icon-cloud-rain-icon-white-weather-icon-dark-background-vector-illustration-139986999.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Rain Shower',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'London-Jun15',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              '26 C',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              child: GridView.builder(
                  itemCount: componentDetails.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 8,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Card(
                        color:
                            // ? Color(0xfffe6242)
                            Color(componentDetails[index].color),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    child: Text(
                                  componentDetails[index].status,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                                Container(
                                  child: Switch(
                                      activeColor: Colors.white,
                                      value:
                                          componentDetails[index].switchStatus,
                                      onChanged: (value) {
                                        setState(() {
                                          componentDetails[index].switchStatus =
                                              value;
                                          if (value == true) {
                                            componentDetails[index].status =
                                                'ON';
                                            componentDetails[index].color =
                                                0xfffe6242;
                                            // color[index] = 0xfffe6242;
                                          } else if (value == false) {
                                            componentDetails[index].status =
                                                'OFF';
                                            componentDetails[index].color =
                                                0xff1f1f1f;
                                            // color[index] = 0xff1f1f1f;
                                          }
                                        });
                                      }),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              child: Icon(
                                componentDetails[index].componentIcon,
                                color: Colors.white,
                                size: 65,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                componentDetails[index].componentName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
