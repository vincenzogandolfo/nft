import 'package:flutter/material.dart';
import 'partials/home.dart';
import 'partials/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('NFT Shop'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 8,
            tabs: [
              Tab(
                icon: Icon(Icons.home_outlined),
              ),
              Tab(
                icon: Icon(Icons.person_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Profile(),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {},
          icon: const Icon(Icons.attach_money),
          label: const Text('Vendi NFT'),
        ),
      ),
    );
  }
}
