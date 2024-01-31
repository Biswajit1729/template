import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return GetMaterialApp(
      title: 'Open Talk',
      initialBinding: IndexBinding(),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: RoutePages.INITIAL,
      getPages: RoutePages.list,
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: AppColors.primaryBackground,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: AppColors.primaryBackground,
      ),
      themeMode: ThemeMode.system,
    );
  }
}

class LonelyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lonely'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Handle home tap
              },
            ),
            ListTile(
              title: Text('Explore'),
              onTap: () {
                // Handle explore tap
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Handle profile tap
              },
            ),
            ListTile(
              title: Text('Messages'),
              onTap: () {
                // Handle messages tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Wellcome! we are happy to find you here'),
      ),
    );
  }
}
