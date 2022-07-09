import 'package:flutter/material.dart';

import '../custom_widgets/drawer.dart';
import '../brain/story_brain.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryLine storypage = StoryLine();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset(
              "images/hamburger.png",
              color: Colors.white,
            ),
            iconSize: 10,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: UserDrawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        // constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/destinibackground.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    //: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storypage.getStory(),
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Visibility(
                  //   visible: storypage.buttonshouldbevisible(),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        //  exist();
                        storypage.nextStory(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      storypage.getchoice1(),
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 1,
                child: Visibility(
                  visible: storypage.buttonshouldbevisible(),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        storypage.nextStory(2);
                        //     exist();
                        // if (storypage.storynumber == 3 ||
                        //     storypage.storynumber == 4 ||
                        //     storypage.storynumber == 5) {
                        //   storypage.restart();
                        // }
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                      storypage.getchoice2(),
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//  if (storynumber == 3 && storynumber == 4 && storynumber == 5) {
//       storynumber = 0;
//     }
}
