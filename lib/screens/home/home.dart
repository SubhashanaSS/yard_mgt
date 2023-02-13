import 'package:flutter/material.dart';
import 'package:yard_mgt/library/globals.dart';
import 'package:yard_mgt/library/size_helpers.dart';
import 'package:yard_mgt/screens/optionsview/optionsView.dart';

//import 'package:yard_mgt/screens/home/card.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: displayHeight(context) * 0.25,
            color: primaryColor,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: displayHeight(context) * 0.15,
                    ),
                    const Text(
                      'Search By',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 23.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const Text(
                    //   '',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontStyle: FontStyle.normal,
                    //     fontSize: 23.0,
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: displayWidth(context) * 0.65,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          // hintText: "Search",
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.black,
                        child: const Icon(
                          Icons.qr_code_scanner_outlined,
                          size: 22,
                        ),
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            //height: displayHeight(context) * 0.23,
            color: const Color.fromARGB(255, 239, 239, 239),
            //padding: const EdgeInsets.all(20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "ABC123W31421993",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                        const Text(
                          '001 | Customer : Amal',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const optionsView())));
                          }),
                          child: const Text(
                            'Details',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assests/images/car1.jpg',
                      height: displayHeight(context) * 0.141,
                      //width: displayWidth(context)*0.1,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                height: 1,
                thickness: 2,
              )
            ]),
          ),
          Container(
            //height: displayHeight(context) * 0.23,
            color: const Color.fromARGB(255, 239, 239, 239),
            //padding: const EdgeInsets.all(20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "ABC123W31421993",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                        const Text(
                          '001 | Customer : Amal',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const optionsView())));
                          }),
                          child: const Text(
                            'Details',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assests/images/car1.jpg',
                      height: displayHeight(context) * 0.141,
                      //width: displayWidth(context)*0.1,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                height: 1,
                thickness: 2,
              )
            ]),
          ),
          Container(
            //height: displayHeight(context) * 0.23,
            color: const Color.fromARGB(255, 239, 239, 239),
            //padding: const EdgeInsets.all(20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "ABC123W31421993",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                        const Text(
                          '001 | Customer : Amal',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const optionsView())));
                          }),
                          child: const Text(
                            'Details',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assests/images/car1.jpg',
                      height: displayHeight(context) * 0.141,
                      //width: displayWidth(context)*0.1,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                height: 1,
                thickness: 2,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
