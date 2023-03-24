import 'package:flutter/material.dart';
import 'package:privacy_policy_generator/data.dart';
import 'package:privacy_policy_generator/html_reader.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _mykey = GlobalKey<FormState>();
  TextEditingController cAppname = TextEditingController();
  TextEditingController cContace = TextEditingController();
  TextEditingController cLocation = TextEditingController();
  TextEditingController cEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Privacy Police Genertor")),
      ),
      body: Form(
        key: _mykey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: cAppname,
                  decoration: const InputDecoration(
                    hintText: "Enter App name",
                    labelText: "App Name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter App name";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: cContace,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Enter Contact No",
                    labelText: "Contact No",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Contact number";
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: cLocation,
                  decoration: const InputDecoration(
                    hintText: "Enter Location",
                    labelText: "Location",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your Location";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: cEmail,
                  decoration: const InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your Email";
                    }
                    if (!isValiEmail(value)) {
                      return "Please Enter correct  email";
                    }
                    return null;
                  },
                ),
                MaterialButton(
                  onPressed: () {
                    if (_mykey.currentState!.validate()) {
                      Policy p = Policy(cAppname.text, cContace.text,
                          cLocation.text, cEmail.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PolicyPage(p)),
                      );
                    } else {
                      print("Validation failed.");
                    }
                  },
                  color: Color.fromARGB(255, 66, 114, 54),
                  child: const Text(
                    "Generate",
                    style: TextStyle(
                        fontSize: 22, color: Color.fromARGB(31, 146, 139, 150)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool isValiEmail(String email) {
  // Regular expression to match email addresses
  final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  return regex.hasMatch(email);
}
