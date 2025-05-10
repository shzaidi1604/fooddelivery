import 'package:flutter/material.dart';
import 'package:fooddelivery/services/auth/auth_service.dart';
import 'package:fooddelivery/views/settings_screen.dart';
import 'package:fooddelivery/widgets/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() async{
    final authService = AuthService();
    await authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 50),
            child: Icon(
              Icons.lock_open,
              size: 50,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          //home list
          MyDrawerTile(
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
            text: "H O M E",
          ),

          //setting list
          MyDrawerTile(
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SettingsScreen();
              }));


            },
            text: "S E T T I N G S",
          ),

          Spacer(),

          //logout list
          MyDrawerTile(icon: Icons.logout, onTap: logout, text: "L O G O U T"),

          SizedBox(height: 50),
        ],
      ),
    );
  }
}
