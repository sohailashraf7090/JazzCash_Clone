import 'package:flutter/material.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("upTap");
        showModalBottomSheet(
            // useSafeArea: true,
            isScrollControlled: false,
            enableDrag: true,

            // transitionAnimationController: AnimationController(vsync: ),
            context: context,
            builder: (BuildContext context) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("tapdown");
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: const Icon(
                        Icons.panorama_wide_angle,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )
                ],
              );
            });
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: const Icon(
          Icons.panorama_wide_angle,
          size: 30,
        ),
      ),
    );
  }
}

class BottomSheets1 extends StatelessWidget {
  const BottomSheets1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("upTap");
        showModalBottomSheet(

            // isScrollControlled: true,
            enableDrag: true,
            context: context,
            builder: (BuildContext context) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      print("abc");
                    },
                    child: Container(
                        width: double.infinity,
                        color: Colors.grey,
                        child: const Icon(Icons.arrow_upward)),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.red),
                  )
                ],
              );
            });
      },
      child: Container(
          width: double.infinity,
          color: Colors.grey,
          child: const Icon(Icons.arrow_upward)),
    );
  }
}
