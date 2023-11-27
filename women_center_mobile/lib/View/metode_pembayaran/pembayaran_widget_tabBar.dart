import 'package:flutter/material.dart';
import 'package:women_center_mobile/style.dart';

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
        backgroundColor:
            Colors.pink.shade200, // Set the background color to pink
        title: Text('Pembayaran'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 23, right: 23, bottom: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.pink.shade100,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //---------ROW TEXT LEFT--------------
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Virtual Account',
                        style: defaultB.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            '123456789',
                            style: defaultB,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.copy),
                          ),
                        ],
                      ),
                      Text(
                        'Virtual Account Name',
                        style: defaultB.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text('Femina Care'),
                      SizedBox(height: 5),
                      Text(
                        'Total',
                        style: defaultB.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text('Rp. 750.000', style: defaultB),
                    ],
                  ),
                ),
                //----------------- ROW IMAGE ---------------
                Container(
                  padding: EdgeInsets.only(right: 15, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/mandiribg.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 23, right: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Pilih Pembayaran',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TabBar(
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
            labelPadding: EdgeInsets.only(left: 20),
            labelStyle: TextStyle(fontSize: 16),
            unselectedLabelStyle: TextStyle(fontSize: 14),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _mBanking(),
                _atm(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mBanking() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: Text('//ambil dari api?'),
      ),
    );
  }

  Widget _atm() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: Text('Ambil dariApi?'),
      ),
    );
  }
}
