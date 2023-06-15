import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:thoughtbox/infrastructure/box/hivebox.dart';
import 'package:thoughtbox/presentation/core/colors.dart';
import 'package:thoughtbox/presentation/core/fonts.dart';
import 'package:thoughtbox/presentation/screen_onbording/screen_onbording.dart';

class CustomDrower extends StatelessWidget {
  CustomDrower({
    Key? key,
    required this.storage,
  }) : super(key: key);

  final GetStorage storage;
  final box = Boxes.getTransactions();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.person,
                  color: grey,
                  size: 90,
                ),
                const SizedBox(height: 10),
                Text(
                  storage.read("username"),
                  style: noteTitles,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
              child: ListTile(
            onTap: () {
          
              storage.write("isLogin", false);
              storage.remove('username');
              storage.remove('password');
          
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnbordingScreen(),
                  ));
            },
            leading: const Icon(
              Icons.logout,
              color: blue,
            ),
            title: Text(
              "Logout",
              style: drawerText,
            ),
          ))
        ],
      ),
    );
  }
}
