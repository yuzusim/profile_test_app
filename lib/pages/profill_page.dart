import 'package:flutter/material.dart';

class ProfillPage extends StatelessWidget {
  const ProfillPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProfillePage();
  }
}

class ProfillePage extends StatelessWidget {
  const ProfillePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profille"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: 200,
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0, // 최초 0으로
              child: Column(
                children: [
                  TabBar(tabs: [
                    Tab(icon: Icon(Icons.car_crash)),
                    Tab(icon: Icon(Icons.car_repair)),
                  ]),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
