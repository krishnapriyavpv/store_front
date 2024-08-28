import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_front/controllers/menu_app_controller.dart';
import 'package:store_front/screens/main/main_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
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
            },
            child: const Text("Login")),
      ),
    );
  }
}
