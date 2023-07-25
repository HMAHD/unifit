import 'package:flutter/material.dart';

class Credit extends StatefulWidget {
  const Credit({super.key});

  @override
  State<Credit> createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: devHeight * 0.05,
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(70, 245, 202, 1),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    const Text(
                      "Credit",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: devHeight * 0.5,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 3.5,
                minimumSize: const Size(330, 60),
                backgroundColor: Color.fromRGBO(70, 245, 202, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Deposit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
