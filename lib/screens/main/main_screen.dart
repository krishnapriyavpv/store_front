// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:store_front/controllers/menu_app_controller.dart';
// import 'package:store_front/utils/responsive.dart';
// import 'package:store_front/screens/dashboard/dashboard_screen.dart';

// import 'components/side_menu.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: context.read<MenuAppController>().scaffoldKey,
//       drawer: const SideMenu(),
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // We want this side menu only for large screen
//             if (Responsive.isDesktop(context))
//               const Expanded(
//                 // default flex = 1
//                 // and it takes 1/6 part of the screen
//                 child:  SideMenu(),
//               ),
//             const Expanded(
//               // It takes 5/6 part of the screen
//               flex: 5,
//               child:  DashboardScreen(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_front/controllers/menu_app_controller.dart';
import 'package:store_front/utils/responsive.dart';
import 'package:store_front/screens/dashboard/dashboard_screen.dart';
import 'package:store_front/screens/orders/orders_page.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onDrawerItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(
        onItemSelected: _onDrawerItemTapped,
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(
                  onItemSelected: _onDrawerItemTapped,
                ), // Fixed side menu for desktop
              ),
            Expanded(
              flex: 5,
              child: IndexedStack(
                index: _selectedIndex,
                children: [
                  const DashboardScreen(),
                  const OrdersPage(),
                  // Add other pages here
                  const DashboardScreen(),
                  const DashboardScreen(),
                  const DashboardScreen(),
                  const DashboardScreen(),
                  const DashboardScreen(),
                  const DashboardScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
