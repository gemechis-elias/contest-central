import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class ContestStanding extends StatefulWidget {
  @override
  _ContestStandingState createState() => _ContestStandingState();
}

class _ContestStandingState extends State<ContestStanding>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Container(
          child: const Text(
            "Contest Standing",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.itemsBackground,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          // Wrap the outer Container with Expanded
          child: Container(
            width: 400,
            decoration: BoxDecoration(
              color: AppColors.itemsBackground,
            ),
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 4,
                  tabs: const [
                    Tab(icon: Text("ITEM ONE")),
                    Tab(icon: Text("ITEM TWO")),
                    Tab(icon: Text("ITEM THREE")),
                  ],
                  controller: _tabController,
                ),
                const SizedBox(height: 10),
                Expanded(
                  // Wrap the TabBarView with Expanded
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Align(
                          child: Text("Section : 1",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black))),
                      Align(
                          child: Text("Section : 2",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black))),
                      Align(
                          child: Text("Section : 3",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
