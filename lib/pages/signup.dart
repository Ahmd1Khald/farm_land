import 'package:flutter/material.dart';

import '../compont/textfield.dart';
import 'home.dart';

class signup extends StatefulWidget {
  const signup({super.key});
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var FirstName = TextEditingController();
  var LastName = TextEditingController();
  var email = TextEditingController();
  var number = TextEditingController();
  var password = TextEditingController();
  Icon ic = Icon(Icons.remove_red_eye_rounded);
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text(
          "Sing Up ",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                textfeild(
                    "First Name",
                    "enter First Name",
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle)),
                    TextInputType.text,
                    FirstName),
                const SizedBox(
                  height: 25,
                ),
                textfeild(
                    "Last Name",
                    "enter Last Name",
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle)),
                    TextInputType.text,
                    LastName),
                const SizedBox(
                  height: 25,
                ),
                textfeild(
                    "Email",
                    "enter email  ",
                    IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
                    TextInputType.emailAddress,
                    email),
                const SizedBox(
                  height: 25,
                ),
                textfeild(
                    "Number",
                    " enter number",
                    IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                    TextInputType.number,
                    number),
                const SizedBox(
                  height: 25,
                ),
                textfeild(
                    "Password",
                    " enter password",
                    IconButton(
                      icon: ic,
                      onPressed: () {
                        setState(() {
                          pass = !pass;
                          if (pass == true)
                            ic = Icon(Icons.remove_red_eye_rounded);
                          else
                            ic = Icon(Icons.remove_red_eye_outlined);
                        });
                      },
                    ),
                    TextInputType.visiblePassword,
                    password),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Home();
                    }));
                  },
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    'Creat',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
