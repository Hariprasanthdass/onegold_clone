import 'package:flutter/material.dart';
import 'package:onegold_clone/horz_cards/horz_elements.dart';
import 'package:onegold_clone/verti_cards/elements_items.dart';

import 'horz_cards/harz_elementsitems.dart';
import 'verti_cards/elements.dart';

class Investment extends StatelessWidget {
  const Investment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            color: Colors.blue,
          ),
          Positioned(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      const Text(
                        '\$ 523,879.88',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 25,
                        width: 119,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                              ),
                              backgroundColor:
                                  const Color.fromARGB(129, 4, 57, 100)),
                          icon: const Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                            size: 15,
                          ),
                          label: const Text(
                            '3.18 %',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Account Value',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Since last purchaase',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Cash Balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Metal Holdings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        '\$ 5,879.88',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$ 423,009.58',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Card(
                    margin: const EdgeInsets.all(0),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 1,
                        left: 10,
                        right: 30,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 10,
                            color: Colors.black,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Invest As You Spend. New Bullion Card From \nOnegold.',
                                style: TextStyle(fontSize: 14),
                              ),
                              TextButton(
                                onPressed: () {
                                  learnMore(context);
                                },
                                child: const Text('Learn More'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElementsItems(registeredElements),
                  const Divider(
                    indent: 0,
                    endIndent: 0,
                    color: Color.fromARGB(255, 87, 81, 81),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Do More With Onegold',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      height: 120,
                      width: double.infinity,
                      child: HarzElementsItems(registeredHorzElements))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void learnMore(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Dont see all your funds?'),
        content: const Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            height: 305,
            child: Column(children: [
              Text(
                  'Transfers or withdraws are placed on a temporary hold while we wait we wait for the funds to clear. You can instantly buy, withdraw or redeem up to ur available balance.'),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [Text('Available'), Spacer(), Text('\$478.27')],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 84, 83, 83),
                height: 5,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Pending Transfer'),
                  Spacer(),
                  Text('\$650.00'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 84, 83, 83),
                height: 5,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Pending \nWithdrawals'),
                  Spacer(),
                  Text('\$2,576,869.52')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 84, 83, 83),
                height: 5,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Projected'),
                  Spacer(),
                  Text('\$4,125.23'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color.fromARGB(255, 84, 83, 83),
                height: 5,
                indent: 10,
                endIndent: 10,
              ),
            ]),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
