import 'package:farm_land/pages/signup.dart';
import 'package:flutter/material.dart';

import '../compont/textfield.dart';
import 'forgetpass.dart';
import 'home.dart';

class MyFirsApp extends StatefulWidget {
  const MyFirsApp({super.key});

  @override
  State<MyFirsApp> createState() => _MyFirsAppState();
}

class _MyFirsAppState extends State<MyFirsApp> {
  var number = TextEditingController();
  var password = TextEditingController();
  Icon ic = const Icon(Icons.remove_red_eye_rounded);
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: const Text(
          'My Farm',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 95,
              ),
              textfeild(
                  "number",
                  " enter number",
                  IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                  TextInputType.number,
                  number),
              const SizedBox(
                height: 25,
              ),
              textfeild(
                  "passwoed",
                  " enter password",
                  IconButton(
                    icon: ic,
                    onPressed: () {
                      setState(() {
                        pass = !pass;
                        if (pass == true) {
                          ic = const Icon(Icons.remove_red_eye_rounded);
                        } else {
                          ic = const Icon(Icons.remove_red_eye_outlined);
                        }
                      });
                    },
                  ),
                  TextInputType.visiblePassword,
                  password),
              const SizedBox(
                height: 25,
              ),
              MaterialButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                onPressed: () {
                  print(number.text);
                  print(password.text);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return //splashpage();
                        const Home();
                  }));
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  'login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const forgetpass();
                  }));
                },
                child: const Text(
                  "Forget the password ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const signup();
                  }));
                },
                child: const Text(
                  "Sign Up !",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
