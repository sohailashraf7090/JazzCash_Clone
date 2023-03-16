import 'package:flutter/material.dart';
import 'package:jazzcash_app/centerbutton.dart';

void main() {
  runApp(const JazzCash());
}

class JazzCash extends StatefulWidget {
  const JazzCash({super.key});

  @override
  State<JazzCash> createState() => _JazzCashState();
}

class _JazzCashState extends State<JazzCash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 2,
          shadowColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.question_mark,
                    size: 15,
                  )),
            ),
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, right: 10),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17, left: 17),
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              ],
            ),
          ],
          title: const Text("JazzCash"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 210,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.black87,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.amber,
                                    width: 3,
                                  )),
                              child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Center(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text(
                                        "S",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 14),
                            child: Text(
                              "Sohail",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[800],
                              child: const Icon(
                                Icons.qr_code,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: RichText(
                              text: const TextSpan(
                                  text: "Rs.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: " 240",
                                    ),
                                    TextSpan(
                                        text: ".50  ",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ))
                                  ]),
                            ),
                          ),
                          const CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,
                              child: Text(
                                "!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[800],
                              radius: 15,
                              child: const Icon(
                                Icons.refresh,
                                size: 18,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(10)),
                            height: 40,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Loan",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 235, 21, 6),
                                borderRadius: BorderRadius.circular(40)),
                            height: 50,
                            width: 170,
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  "  Add Money",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 156, 156, 156),
                                    borderRadius: BorderRadius.circular(40)),
                                height: 50,
                                width: 170,
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.account_balance_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "  My Account",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 160, top: 3),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "  My jazzCash",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        const Spacer(),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.edit,
                                size: 20,
                              ),
                              Text(" Edit")
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CenterBtn(
                            icond: const Icon(
                              Icons.send,
                              size: 35,
                            ),
                            title: ' Money\nTransfer'),
                        CenterBtn(
                            icond: const Icon(
                              Icons.document_scanner_sharp,
                              size: 35,
                            ),
                            title: 'Utility\n Bills'),
                        CenterBtn(
                            icond: const Icon(
                              Icons.mobile_friendly_outlined,
                              size: 35,
                            ),
                            title: 'Mobile Load\n & Packages'),
                        CenterBtn(
                            icond: const Icon(
                              Icons.account_balance_outlined,
                              size: 35,
                            ),
                            title: 'Banking &\n  Finance')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SecondButton(
                            icon: const Icon(
                              Icons.card_giftcard,
                              size: 35,
                            ),
                            title: " JazzCash\n DebitCard",
                            onPress: () {}),
                        SecondButton(
                            icon: const Icon(
                              Icons.gif_box,
                              size: 35,
                            ),
                            title: "  Mobile\n Bundles",
                            onPress: () {}),
                        SecondButton(
                            icon: const Icon(
                              Icons.shopping_bag,
                              size: 35,
                            ),
                            title: "Shopping\n    Card",
                            onPress: () {}),
                        SecondButton(
                            icon: const Icon(
                              Icons.local_offer_sharp,
                              size: 35,
                            ),
                            title: "JazzCash\n    Offer",
                            onPress: () {}),
                      ],
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                
                                Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.amber,
                                ),
                                 
                    
                              ],
                            ),
                          
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.red,
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.location_on,
              size: 40,
            ),
            label: "Locator",
          ),
          NavigationDestination(
              icon: Icon(
                Icons.qr_code,
                size: 40,
              ),
              label: "Scan QR"),
          NavigationDestination(
              icon: Icon(
                Icons.search,
                size: 40,
              ),
              label: "Search"),
          NavigationDestination(
              icon: Icon(
                Icons.person_add,
                size: 40,
              ),
              label: "Invite"),
        ]),
      ),
    );
  }
}
