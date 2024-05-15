import 'package:flutter/material.dart';

class rejesterScreen extends StatefulWidget {
  const rejesterScreen({super.key});

  @override
  State<rejesterScreen> createState() => _rejesterScreenState();
}

class _rejesterScreenState extends State<rejesterScreen> {
  Color primaryColor = const Color(0xff3c096c);
  Color secondlyColor = const Color(0xff7B2CBF);
  Color thirdlyColor = const Color(0xff9D4EDD);
  Color fourColor = const Color(0xffC77DFF);
  Color fiveColor = const Color(0xffE0AAFF);
  Color sixColor = const Color(0xff5A189A);
  Color sevenColor = const Color(0xff240046);
  Color eight = const Color(0xff10002B);
  var icon = Icons.visibility;
  GlobalKey<FormState> nnn = GlobalKey();
  bool isScure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("images/22.jpg"))),
          padding: const EdgeInsets.all(16),
          child: Form(
            key: nnn,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Event mangment",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "creat new account below.",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 179, 179, 179),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "error";
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    labelText: "name",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 208, 53, 236)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "error";
                  if (value.contains("@")) return "error";
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    labelText: "email",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 208, 53, 236))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "error";
                  if (value!.length > 8) return "error";
                },
                obscureText: isScure,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    labelText: "password",
                    suffixIcon: IconButton(
                      color: Colors.white,
                      icon: Icon(icon),
                      onPressed: () {
                        setState(() {
                          isScure = !isScure;
                          isScure
                              ? icon = Icons.visibility_off
                              : icon = Icons.visibility;
                        });
                      },
                    ),
                    labelStyle: const TextStyle(color: Colors.white),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 182, 85, 200))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "error";
                  if (value!.length > 8) return "error";
                },
                obscureText: isScure,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    labelText: "confirm password",
                    suffixIcon: IconButton(
                      color: Colors.white,
                      icon: Icon(icon),
                      onPressed: () {
                        setState(() {
                          isScure = !isScure;
                          isScure
                              ? icon = Icons.visibility_off
                              : icon = Icons.visibility;
                        });
                      },
                    ),
                    labelStyle: const TextStyle(color: Colors.white),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 208, 53, 236))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 190,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            (MaterialStateProperty.all<Color>(thirdlyColor)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)))),
                    onPressed: () {},
                    child: Container(
                        width: 140,
                        height: 30,
                        child: const Text("creat account",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.center)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: thirdlyColor),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text("<- Log in",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                                textAlign: TextAlign.center),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Already have an account?",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      )),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
