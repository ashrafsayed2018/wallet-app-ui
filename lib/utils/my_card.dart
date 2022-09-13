import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final String cardNumber;
  final String expiryDate;
  final Color color;
  const MyCard({
    required this.balance,
    required this.cardNumber,
    required this.expiryDate,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Balance",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\$ $balance",
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // card number
                Text(
                  cardNumber,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                // card expiry date
                Text(
                  expiryDate,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
