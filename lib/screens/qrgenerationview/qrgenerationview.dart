import 'package:flutter/material.dart';
import 'package:yard_mgt/library/globals.dart';
import 'package:yard_mgt/library/size_helpers.dart';

class qrgenerationView extends StatelessWidget {
  const qrgenerationView({super.key});

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
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(
            height: displayHeight(context) * 0.04,
          ),
          SizedBox(
            height: displayHeight(context) * 0.23,
            //color: mainBgColor,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.remove,
                      size: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: "Chassis No : "),
                            TextSpan(
                                text: "ABC123W31421993",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.remove,
                      size: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: "Stock ID : "),
                            TextSpan(
                                text: "0001",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.remove,
                      size: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                          children: [
                            TextSpan(text: "Customer : "),
                            TextSpan(
                                text: "Amal",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.remove,
                      size: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                          children: [
                            TextSpan(text: "Market : "),
                            TextSpan(
                                text: "Durban",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ]),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Container(
            height: displayHeight(context) * 0.5,
            //color: Colors.white,
            child: Column(
              children: [
                const Icon(
                  Icons.qr_code_2,
                  size: 250,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton.icon(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    fixedSize: Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: const Icon(Icons.print_outlined),
                  label: const Text(
                    'Print QR',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
