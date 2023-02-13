import 'package:flutter/material.dart';
import 'package:yard_mgt/library/size_helpers.dart';
import 'package:yard_mgt/screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assests/images/flutter-icon.png',
                scale: 1.0,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign In',
                          // textAlign: TextAlign.start,
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.mail),
                            // prefixIcon: IconButton(
                            //   onPressed: null,
                            //   icon:  Icon(Icons.email_rounded),
                            // ),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            hintText: "Email Address",
                            labelText: "Email Address",
                          ),
                        ),
                        TextFormField(
                          controller: password,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            hintText: "Password",
                            labelText: "Password",
                            // prefixIcon: IconButton(
                            //   onPressed: null,
                            //   icon: Icon(Icons.vpn_key),
                            // ),
                          ),
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 15.0,
                                color: Colors.blue,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.02,
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100.0, 40.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
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
                      " OR ",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1.5)),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: displayWidth(context) * 0.85,
                height: 50,
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100.0, 40.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Text(
                    'Exit',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Register',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
