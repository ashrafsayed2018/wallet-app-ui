import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/utils/my_button.dart';
import 'package:walletappui/utils/my_card.dart';
import 'package:walletappui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.monetization_on),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        notchMargin: 6.0,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // app bar

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Cards",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    // plus button
                    Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.add)),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // cards
              SizedBox(
                height: 180,
                child: PageView(
                  controller: _controller,
                  children: [
                    MyCard(
                      color: Colors.deepPurple.shade300,
                      balance: 2500.25,
                      expiryDate: "25/10",
                      cardNumber: "*****2500",
                    ),
                    MyCard(
                      color: Colors.deepOrange.shade300,
                      balance: 4500.25,
                      expiryDate: "28/07",
                      cardNumber: "*****3954",
                    ),
                    MyCard(
                      color: Colors.blue.shade300,
                      balance: 8500.25,
                      expiryDate: "26/08",
                      cardNumber: "*****8525",
                    ),
                    MyCard(
                      color: Colors.green.shade300,
                      balance: 8975.25,
                      expiryDate: "27/07",
                      cardNumber: "*****9636",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // smooth card indicator

              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade900),
              ),
              const SizedBox(
                height: 25,
              ),
              // 3 buttons send button + pay button + bills button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    // send button
                    MyButton(
                      iconImagePath: "lib/icons/send_money2.png",
                      title: "Send",
                    ),
                    //  pay button
                    MyButton(
                      iconImagePath: "lib/icons/pay.png",
                      title: "Pay",
                    ),
                    // bills button
                    MyButton(
                      iconImagePath: "lib/icons/bills.png",
                      title: "Bills",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // columns -> stats -> transactions
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: const [
                    // statistics
                    MyListTile(
                      iconImagePath: "lib/icons/statistics.jpg",
                      tileTitle: "Statistics",
                      tileSubTitle: "Payment and income",
                    ),

                    MyListTile(
                      iconImagePath: "lib/icons/statistics.jpg",
                      tileTitle: "Statistics",
                      tileSubTitle: "Payment and income",
                    ),
                    MyListTile(
                      iconImagePath: "lib/icons/statistics.jpg",
                      tileTitle: "Statistics",
                      tileSubTitle: "Payment and income",
                    ),

                    // transactions
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
