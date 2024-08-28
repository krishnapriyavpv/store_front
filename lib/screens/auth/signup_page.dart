import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                // controller: controller,

                decoration: InputDecoration(
                  labelText: "User Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter user name";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // controller: controller,

                decoration: InputDecoration(
                  labelText: "User Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter email id";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // controller: controller,

                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter valid password";
                  }
                  return null;
                },
              ),
              TextFormField(
                // controller: controller,

                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  }
                  return null;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
