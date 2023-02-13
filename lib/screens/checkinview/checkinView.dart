import 'package:flutter/material.dart';
import 'package:yard_mgt/library/globals.dart';
import 'package:yard_mgt/library/size_helpers.dart';

class checkinView extends StatefulWidget {
  const checkinView({super.key});

  @override
  State<checkinView> createState() => _checkinViewState();
}

class _checkinViewState extends State<checkinView> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ABC123W31421993",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          // Container(
          //   height: displayHeight(context) * 0.13,
          //   color: primaryColor,
          //   child: Padding(
          //     padding: const EdgeInsets.fromLTRB(20, 20, 30, 0),
          //     child: Row(
          //       children: const [
          //         Text(
          //           "ABC123W31421993",
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20.0,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(
            height: displayHeight(context) * 0.02,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assests/images/car1.jpg',
                    height: displayHeight(context) * 0.25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: displayHeight(context) * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              height: displayHeight(context) * 0.25,
              width: displayWidth(context) * 1.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(fontSize: 18.0),
                              children: [
                                TextSpan(text: "Chassis No : "),
                                TextSpan(
                                    text: "ABC123W31421993",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: displayHeight(context) * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(fontSize: 17.0),
                              children: [
                                TextSpan(text: "Stock ID : "),
                                TextSpan(
                                    text: "0001",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: displayHeight(context) * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(fontSize: 17.0),
                              children: [
                                TextSpan(text: "Customer : "),
                                TextSpan(
                                    text: "Amal",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: displayHeight(context) * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15,
                        ),
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(fontSize: 17.0),
                              children: [
                                TextSpan(text: "Market : "),
                                TextSpan(
                                    text: "Durban",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: displayHeight(context) * 0.02,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    ElevatedButton(
                      onPressed: (() async {
                        DateTime? _newDate = await showDatePicker(
                          context: context,
                          initialDate: _dateTime,
                          firstDate: DateTime(1980),
                          lastDate: DateTime(2100),
                        );
                        if (_newDate != null) {
                          setState(() {
                            _dateTime = _newDate;
                          });
                        }
                      }),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        fixedSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Pick Date'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: displayHeight(context) * 0.04,
          ),
          SizedBox(
            child: ElevatedButton.icon(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  fixedSize: const Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: const Icon(Icons.home_outlined),
                label: const Text(
                  'Check In',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
