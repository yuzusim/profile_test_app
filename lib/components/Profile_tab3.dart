import 'package:flutter/material.dart';

class Profile_tab2 extends StatelessWidget {
  const Profile_tab2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.directions_car,
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                      //color: Colors.red,
                      ),
                  Container(
                      //color: Colors.blue,
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
