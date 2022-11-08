import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('checkout',
            style: TextStyle(color: Colors.black, fontSize: 20)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 21,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Shipping information',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Change',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text('John Doe'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.phone),
                        title: const Text('+1 234 567 890'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.location_on),
                        title:
                            const Text('1234 Main Street, New York, NY 12345'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Text('Payment method',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(
                        Icons.circle_outlined,
                        color: Colors.black,
                        size: 21,
                      ),
                      onPressed: () {},
                    ),
                    title: const Text('Credit Card'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(
                        Icons.circle_outlined,
                        color: Colors.black,
                        size: 21,
                      ),
                      onPressed: () {},
                    ),
                    title: const Text('Credit Card'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(
                        Icons.circle_outlined,
                        color: Colors.black,
                        size: 21,
                      ),
                      onPressed: () {},
                    ),
                    title: const Text('Credit Card'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  SizedBox(
                    height: 10,
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
