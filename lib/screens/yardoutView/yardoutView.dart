import 'package:flutter/material.dart';

import '../../library/globals.dart';
import '../../library/size_helpers.dart';

class yardoutView extends StatefulWidget {
  const yardoutView({super.key});

  @override
  State<yardoutView> createState() => _yardoutViewState();
}

class _yardoutViewState extends State<yardoutView> {
  String dropdownvalue = "Select";
  var items = ["Select", "Item1", "Item2", "Item3", "Item4"];

  String dropdownvalue1 = "Select";
  var items1 = ["Select", "Item1", "Item2", "Item3", "Item4"];
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
            height: displayHeight(context) * 0.01,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assests/images/car1.jpg',
                    height: displayHeight(context) * 0.15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: displayHeight(context) * 0.005,
          ),
          
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: displayHeight(context) * 0.2,
                    width: displayWidth(context) * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 15, 0, 10),
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
                                      TextSpan(text: "Chassis No : "),
                                      TextSpan(
                                          text: "ABC123W31421993",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.001,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
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
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.001,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
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
                                          text: "Durban",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.001,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
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
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
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
                  height: displayHeight(context) * 0.001,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                  child: Container(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 1.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      isExpanded: true,
                      //itemHeight: 20.0,
                      iconSize: 30,
                      style:
                          const TextStyle(color: Colors.purple, fontSize: 22),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 15),
                  child: Container(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 1.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton(
                      value: dropdownvalue1,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      isExpanded: true,
                      //itemHeight: 20.0,
                      iconSize: 30,
                      style:
                          const TextStyle(color: Colors.purple, fontSize: 22),
                      items: items.map((String items1) {
                        return DropdownMenuItem(
                          value: items1,
                          child: Text(items1),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue1 = newValue!; //dropdownvalue1
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                            style: const TextStyle(fontSize: 20.0),
                          ),
                          ElevatedButton.icon(
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
                              fixedSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            icon: const Icon(Icons.calendar_month_outlined),
                            label: const Text('Pick Date'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.015,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Remarks',
                        style: TextStyle(fontSize: 15),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color.fromARGB(255, 211, 211, 211),
                        ),
                      )
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 40),
                  child: SizedBox(
                    child: ElevatedButton.icon(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          fixedSize: const Size(100, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        icon: const Icon(Icons.exit_to_app_outlined),
                        label: const Text(
                          'Yard Out',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
