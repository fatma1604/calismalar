import 'package:flutter/material.dart';
import 'package:kulanicigirisi/Intro_page.dart';
import 'package:kulanicigirisi/into_screens/into_page1.dart';
import 'package:kulanicigirisi/into_screens/into_page2.dart';
import 'package:kulanicigirisi/into_screens/into_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({Key? key}) : super(key: key);

  @override
  _OnbordingPageState createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntoPage1(),
              IntoPage2(),
              IntoPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text("skip"),
                ),
                SmoothPageIndicator(
                    controller: _controller,
                    count: 3), //sayfalar arasında yumşak bir geçiş//noktalar
                onLastPage
                    ? GestureDetector(
                        // kullanıcıların cihaz ekranı ile
                        //etkileşimde bulunmasını sağlar ve çeşitli jestlere (dokunma, kaydırma, uzun basma, vb.) tepki verebilir.
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return IntroPage();
                          }));
                        },
                        child: Text("done"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("next"),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
