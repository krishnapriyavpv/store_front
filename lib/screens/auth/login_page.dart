import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_front/controllers/menu_app_controller.dart';
import 'package:store_front/screens/auth/signup_page.dart';
import 'package:store_front/screens/main/main_screen.dart';
import 'package:store_front/utils/constants.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//    final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => MultiProvider(
//                           providers: [
//                             ChangeNotifierProvider(
//                               create: (context) => MenuAppController(),
//                             ),
//                           ],
//                           child: const MainScreen(),
//                         )),
//               );
//             },
//             child: const Text("Login")),
//       ),
//     );
//   }
// }

// ignore_for_file: avoid_print, use_build_context_synchronously

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _loginMessage = '';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.asset('images/name.png'),
              // const SizedBox(height: 10),
              const SizedBox(
                width: 296.88,
                height: 69.39,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 21.96,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              // Center(
              //   child: Container(
              //     width: 103.64,
              //     height: 115.94,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage("images/girl.png"),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: primaryColor, // Set the border color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 2.5, // Set the border thickness
                            color: primaryColor, // Set the border color
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        hintText: "Enter Your Email ID",
                        alignLabelWithHint: true,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    // CustomTextField(
                    //     labelText: "Enter Your Password",
                    //     errorText: "Enter Your Password",
                    //     controller: _passwordController),

                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: primaryColor, // Set the border color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 2.5, // Set the border thickness
                            color: primaryColor, // Set the border color
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        hintText: "Enter Your Password",
                        alignLabelWithHint: true,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Your Password';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Forgot Password ?",
                  textAlign: TextAlign.center,
                  // color: tertiaryColor,
                  // size: 16,
                  // fontFamily: 'Open Sans',
                  // fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                    child: Text("Log In"),
                    // color: primaryColor,
                    // fixedSize: const Size(350, 50),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MultiProvider(
                                  providers: [
                                    ChangeNotifierProvider(
                                      create: (context) => MenuAppController(),
                                    ),
                                  ],
                                  child: const MainScreen(),
                                )),
                      );
                      // if (_formKey.currentState!.validate()) {
                      //Authenticate
                      // signInWithEmailAndPassword(
                      //     context,
                      //     _emailController.text.trim(),
                      //     _passwordController.text.trim());
                    }
                    // },
                    ),

                //  ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(13),
                //     ),
                //     backgroundColor: primaryColor,
                //     foregroundColor: white,
                //     fixedSize: const Size(350, 50),
                //   ),
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       //Authenticate
                //       signInWithEmailAndPassword(
                //           context,
                //           _emailController.text.trim(),
                //           _passwordController.text.trim());
                //     }
                //   },
                //   child: const Padding(
                //     padding: EdgeInsets.all(16.0),
                //     child: Text(
                //       'Log In',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         color: white,
                //         fontSize: 19.32,
                //         fontFamily: 'Open Sans',
                //         fontWeight: FontWeight.w600,
                //         height: 0,
                //       ),
                //     ),
                //   ),
                // ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "or",
                  textAlign: TextAlign.center,
                  // size: 16,
                  // fontFamily: 'Open Sans',
                  // fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                    );
                  },
                  child: const Text("Don't Have an Account? Register Here"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
