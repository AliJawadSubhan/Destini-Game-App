import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:myquizzapp/custom_widgets/body.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              height: 100.0,
              width: 200.0,
              child: Image.asset("images/signup.png"),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in!',
                  style: TextStyle(
                      color: Color(0xFF8000FF),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              width: size.width * 0.95,
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Username/Email",
                  labelStyle: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.95,
              // color: Colors.green,
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              width: size.width * 0.95,
              // color: Colors.green,
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Confirm-Password",
                  labelStyle: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Container(
                padding: const EdgeInsets.fromLTRB(23, 9, 9, 9),
                width: size.width * 0.9,
                child: const Text(
                  "Sign in with..",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
            SigninContainer(size: size),
            const SizedBox(
              height: 19,
            ),
            SigninContainer(size: size),
            const SizedBox(
              height: 19,
            ),
            SigninContainer(size: size),
          ],
        ),
      )),
    );
  }
}

class SigninContainer extends StatelessWidget {
  const SigninContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: size.width * 0.9,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Sign in with",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(fontAwesomeIcons[FontAwesomeIcons.google]),
        ),
      ]),
    );
  }
}
