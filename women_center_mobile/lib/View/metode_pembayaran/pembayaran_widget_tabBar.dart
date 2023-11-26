import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _currentTabIndex = 0;
  TabController? _tabController; // Declare as nullable

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: 2, initialIndex: _currentTabIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink, // Set the background color to pink
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'M-Banking'),
            Tab(text: 'ATM'),
          ],
          onTap: (index) {
            setState(() {
              _currentTabIndex = index;
            });
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _mBanking(),
          _atm(),
        ],
      ),
    );
  }

  Widget _mBanking() {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('M-Banking'),
      ),
      body: Center(
        child: Text('Pembayaran bank'),
      ),
    );
  }

  Widget _atm() {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('ATM'),
      ),
      body: Center(
        child: Text('ATM'),
      ),
    );
  }
}
