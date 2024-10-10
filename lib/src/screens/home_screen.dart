import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton.outlined(
                      onPressed: () {
                        //
                      },
                      icon: const Icon(Icons.person_outline),
                    ),
                    Text(
                      "Welcome, Sam👋🏾",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    IconButton.outlined(
                      onPressed: () {
                        //
                      },
                      icon: const Icon(Icons.notifications_outlined),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 1],
                      colors: [
                        Colors.red,
                        Colors.orange,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "WALLET BALANCE",
                            style: TextStyle(fontSize: 10.0),
                          ),
                          const Row(
                            children: [
                              Text(
                                "NGN 50,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Icon(Icons.visibility_off_outlined, size: 12.0),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                              vertical: 2.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Cashback  ",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                const Text(
                                  "N341.20",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(
                        height: 70.0,
                        child: VerticalDivider(color: Colors.red, width: 3.0),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MONIEPOINT",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "8192017482",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(Icons.visibility_off_outlined,
                                        size: 12.0),
                                  ],
                                ),
                                Text(
                                  "Deposit fee: N20",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: Colors.grey.shade500,
                          size: 20.0,
                        ),
                        const SizedBox(height: 5.0),
                        const Text(
                          "Top up",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                      width: 50.0,
                      child: VerticalDivider(color: Colors.grey),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.grey.shade500,
                          size: 20.0,
                        ),
                        const SizedBox(height: 5.0),
                        const Text(
                          "Transfer",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                      width: 50.0,
                      child: VerticalDivider(color: Colors.grey),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.access_time_sharp,
                          color: Colors.grey.shade500,
                          size: 20.0,
                        ),
                        const SizedBox(height: 5.0),
                        const Text(
                          "History",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Container(
                  width: 50.0,
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Quick Actions",
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    buildQuickActionBtn(
                      icon: Icons.data_saver_off_outlined,
                      label: "Data",
                    ),
                    const SizedBox(width: 5.0),
                    buildQuickActionBtn(
                      icon: Icons.credit_card,
                      label: "Airtime",
                    ),
                    const SizedBox(width: 5.0),
                    buildQuickActionBtn(
                      icon: Icons.tv,
                      label: "Showmax",
                    ),
                    const SizedBox(width: 5.0),
                    buildQuickActionBtn(
                      icon: Icons.card_giftcard,
                      label: "Giftcards",
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    buildQuickActionBtn(
                      icon: Icons.sports_soccer,
                      label: "Betting",
                    ),
                    const SizedBox(width: 5.0),
                    buildQuickActionBtn(
                      icon: Icons.electric_bolt_sharp,
                      label: "Electricity",
                    ),
                    const SizedBox(width: 5.0),
                    buildQuickActionBtn(
                      icon: Icons.cable,
                      label: "TV/Cable",
                    ),
                    const SizedBox(width: 5.0),
                    buildQuickActionBtn(
                      icon: Icons.password,
                      label: "E-Pin",
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "News & updates",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    TextButton(
                      onPressed: () {
                        //
                      },
                      child: const Text(
                        "View all",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 120.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10.0),
                    itemCount: 3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: Colors.red,
        child: const Icon(Icons.wechat),
      ),
    );
  }

  Widget buildQuickActionBtn({required IconData icon, required String label}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade800.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.red,
              size: 20.0,
            ),
            const SizedBox(height: 5.0),
            Text(
              label,
              style: const TextStyle(fontSize: 11.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
