import 'package:flutter/material.dart';

import 'components/Profile_tab2.dart';
import 'components/profile_buttons.dart';
import 'components/profile_count_info.dart';
import 'components/profile_drawer.dart';
import 'components/profile_header.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: ProfileDrawer(), // 왼쪽
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          Expanded(child: Profile_tab2()),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Profile"),
      centerTitle: true,
    );
  }
}

// class ProfillePage extends StatelessWidget {
//   const ProfillePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       endDrawer: ProfileDrawer(),
//       // ProfileDrawer
//       appBar: AppBar(
//         title: Text("Profille"),
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.yellow,
//             height: 200,
//           ),
//           Expanded(
//             child: DefaultTabController(
//               length: 2,
//               initialIndex: 0, // 최초 0으로
//               child: Column(
//                 children: [
//                   TabBar(tabs: [
//                     Tab(icon: Icon(Icons.car_crash)),
//                     Tab(icon: Icon(Icons.car_repair)),
//                   ]),
//                   Expanded(
//                     child: TabBarView(
//                       children: [
//                         Container(
//                           color: Colors.red,
//                         ),
//                         Container(
//                           color: Colors.blue,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
