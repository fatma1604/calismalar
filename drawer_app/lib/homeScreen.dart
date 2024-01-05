import 'package:drawer_app/butonsayfasi.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sınav Ekranı "),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://s3.us-west-1.wasabisys.com/ft-backgrounds/mreflow-Matt_Wolfe_dreamlike_undersea_world_corral_reef_colorful_rgb____ef12fa97-16cd-4b7d-80a4-bb1ba64abcb5.jpeg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Butonsayfas(
                                  chooseAnswer: (String answer) {},
                                )));
                  },
                  child: Text("Oyuna basşla ")),
            ],
          ),
        ),
      ),
    );
  }
}
