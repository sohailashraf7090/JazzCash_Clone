import 'package:flutter/material.dart';

class CenterBtn extends StatelessWidget {
  Icon icond;
  String title;
  CenterBtn({Key? key, required this.icond, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1, 1), color: Colors.grey, blurRadius: 3),
              ]),
          child: icond,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

//New widgts

// ignore: must_be_immutable
class SecondButton extends StatelessWidget {
  Icon icon;
  String title;

  final VoidCallback onPress;
  SecondButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 1),
                          blurRadius: 3)
                    ]),
                child: icon,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: InkWell(
                onTap: onPress,
                child: Container(
                  width: 46,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(1, 2),
                            blurRadius: 3)
                      ]),
                  child: const Center(
                      child: Text(
                    "New",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
                  )),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
