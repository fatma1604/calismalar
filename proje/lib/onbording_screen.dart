import 'package:flutter/material.dart';
import 'package:proje/login_screen.dart';
import 'package:proje/sayfalar/sayfabir.dart';
import 'package:proje/sayfalar/sayfaiki.dart';
import 'package:proje/sayfalar/sayfauc.dart';
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
              Sayfabir(),
              Sayfaiki(),
              Sayfauc(),
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
                            return LoginScreen();
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
