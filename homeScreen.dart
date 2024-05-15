import 'package:flutter/material.dart';
import 'package:flutterproject2/components/colors.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 7, 134),
        title: Row(children: [
          const Icon(Icons.menu),
          const SizedBox(
            width: 30,
          ),
          const Text("Home page"),
          const SizedBox(
            width: 150,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
          )
        ]),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.purple,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 200,
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "category",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              physics: const RangeMaintainingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: 6,
              itemBuilder: (BuildContext context, int i) {
                return weed(context, i);
              },
            ),
          ]),
        ),
      ),
    );
  }
}

Container weed(BuildContext context, int i) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 75, 6, 87)),
  );
}
