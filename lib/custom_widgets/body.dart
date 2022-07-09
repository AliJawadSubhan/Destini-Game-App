import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:myquizzapp/const.dart';
import 'package:myquizzapp/screens/signup.dart';
import 'package:myquizzapp/screens/storypage.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.2,
          ),
          Container(
            height: 100.0,
            width: 200.0,
            child: Image.asset("images/login.png"),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                    color: Color(0xFF00AEEF),
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
                labelText: "Password",
                labelStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF00AEEF),
            ),
            height: 60.0,
            width: size.width * 0.9,
            padding: const EdgeInsets.all(9),
            child: TextButton(
              child: const Text(
                "Login",
                style: buttontext,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StoryPage()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              Container(
                height: 60.0,
                width: size.width * 0.9,
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF00AEEF)),
                ),
                child: TextButton(
                  child: const Text(
                    "Sign UP",
                    style: buttontext2,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(23, 9, 9, 9),
                  width: size.width * 0.9,
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF00AEEF),
                    ),
                  ),
                ),
              ]),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              const Text("OR"),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialBtn(
                  size: size,
                  imgUrl: "images/facebook.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                SocialBtn(
                  size: size,
                  imgUrl: "images/google.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                SocialBtn(
                  size: size,
                  imgUrl: "images/apple-logo.png",
                ),
                const SizedBox(
                  height: 20,
                ),

                // Container(
                //   width: 2,
                //   padding: const EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Color(0xFF00AEEF)),
                //     shape: BoxShape.circle,
                //   ),
                //   // child: Image.asset(
                //   //   "images/google.png",
                //   //   width: 5,
                //   // ),
                // ),
                // Container(
                //   width: 2,
                //   padding: const EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Color(0xFF00AEEF)),
                //     shape: BoxShape.circle,
                //   ),
                //   // child: Image.asset(
                //   //   "images/apple-logo.png",
                //   //   width: 5,
                //   // ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialBtn extends StatelessWidget {
  const SocialBtn({
    Key? key,
    required this.size,
    required this.imgUrl,
  }) : super(key: key);

  final Size size;
  // final
  final String imgUrl;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 60.0,
        // width: 70,
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: Colors.grey,
            )),
        child:
            // const Padding(
            //   padding: EdgeInsets.only(left: 10.0),
            //   child: Text(
            //     "Sign in with",
            //     style: TextStyle(
            //       fontSize: 15,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            // const Spacer(),
            Center(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              height: 40,
              width: 50,
              child: Image.asset(imgUrl),
            ),
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
//   final Size size;
// var size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "images/topright.png",
                  // height: size.height * 0.5,
                  width: size.width,
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
