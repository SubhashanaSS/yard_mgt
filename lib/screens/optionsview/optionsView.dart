import 'package:flutter/material.dart';
import 'package:yard_mgt/library/globals.dart';
import 'package:yard_mgt/library/size_helpers.dart';
import 'package:yard_mgt/screens/checkinview/checkinView.dart';
import 'package:yard_mgt/screens/qrgenerationview/qrgenerationview.dart';
import 'package:yard_mgt/screens/yardoutView/yardoutView.dart';

class optionsView extends StatefulWidget {
  const optionsView({super.key});

  @override
  State<optionsView> createState() => _optionsViewState();
}

class _optionsViewState extends State<optionsView> {
  //final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Actions',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
            child: Container(
              height: displayHeight(context) * 0.14,
              width: displayWidth(context) * 1.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assests/images/car1.jpg',
                          height: displayHeight(context) * 0.10,
                          //width: displayWidth(context)*0.1,
                        ),
                      ),
                      const Text(
                        "ABC123W31421993",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: displayHeight(context) * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: const [
                Expanded(
                    child: Divider(
                  thickness: 1.5,
                )),
                Text(
                  " Options ",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Expanded(child: Divider(thickness: 1.5)),
              ],
            ),
          ),
          SizedBox(
            height: displayHeight(context) * 0.01,
          ),
          Expanded(
            child: ListView(
              //shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: [
                    //Row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                    builder: ((context) =>
                                        const qrgenerationView()))
                                    );
                                }),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.qr_code_2,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Generate QR')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.home,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Home')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                    builder: ((context) =>
                                        const yardoutView()))
                                    );
                                }),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.exit_to_app,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Yard Out')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),

                    //Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.sync_alt,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Lane Update')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                    builder: ((context) =>
                                        const checkinView()))
                                    );
                                }),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.checklist,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Check List')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.no_crash,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Yard Out')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),

                    //Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.photo_camera,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Capture\n')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.format_list_bulleted,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Item Tracker\n')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.view_list,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'View\nAccessories',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),

                    //row 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.send_time_extension,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Accessory \nDispatch',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.featured_play_list,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Container \nApproval',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.image,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Container \nImages',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),

                    //row 5
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.list_alt,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Container \nDispatch',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: MaterialButton(
                                onPressed: (() {}),
                                color: Colors.white,
                                textColor: Colors.black,
                                child: Icon(
                                  Icons.update,
                                  size: 40,
                                ),
                                height: 80,
                                minWidth: 80,
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Update \nEngine no.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              child: Text(''),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
              height: displayHeight(context) * 0.25,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                color: primaryColor,
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: displayHeight(context) * 0.05,
                  ),
                  const Text(
                    "ABC123W31421993",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: displayHeight(context) * 0.045,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assests/images/car1.jpg',
                      height: displayHeight(context) * 0.1,
                      //width: displayWidth(context)*0.1,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.vpn_key,
                color: Colors.blue,
              ),
              //trailing: Icon(Icons.vpn_key),
              title: const Text(
                'Change Password',
                style: TextStyle(
                  //fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  //fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
