import 'package:flutter/material.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/reload.dart';

// ignore: camel_case_types
class Payment_Gateway extends StatefulWidget {
  const Payment_Gateway({super.key});

  @override
  State<Payment_Gateway> createState() => _Payment_GatewayState();
}
class _Payment_GatewayState extends State<Payment_Gateway> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(220, 28, 232, 164),
            toolbarHeight: 100,
            elevation: 10,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: const Icon(
                  Icons.menu,
                  size: 40,
                  color: Colors.black,
                ),
              ),
            ),
            title: const Center(
              child: Text(
                'Deposit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            actions: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                ],
              )
            ],
          ),
          body: Center(
             child: Container(
              //color: Colors.amber,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        width: 40,
                      ),
                      const Text(
                        'Enter Card Details',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Expiry Date (MM/YY)',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                           const SizedBox(width: 20),
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'CVV',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Amount',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                       const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 3.5,
                            minimumSize: const Size(330, 60),
                            backgroundColor:
                                const Color.fromARGB(220, 28, 232, 164),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                           onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Reload()),
                            );
                          },
                          child: const Text(
                            "Save",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
          