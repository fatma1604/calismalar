import 'package:burclar/model/burc_listesi.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
//detay


class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;

  const BurcDetay({Key? key, required this.secilenBurc}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarrengi = Colors.transparent;

  @override
  void initState() {
    appbarrengibul();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            title: Text(
              widget.secilenBurc.burcadi + " Burc ve Özellikleri",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: appbarrengi,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/" + widget.secilenBurc.buyukresim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    widget.secilenBurc.burcdetay,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appbarrengibul() async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      AssetImage("assets/images/" + widget.secilenBurc.buyukresim),
    );
    setState(() {
      appbarrengi = paletteGenerator.dominantColor!.color;
    });
  }
}
