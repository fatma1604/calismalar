import 'dart:async';

Stream<int> getnumber() async* {
  for (int i = 0; i < 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    // if (i == 2) {
    //    throw Exception('i 2');
    // }
  }
}

StreamController<int> _controller = StreamController<
    int>.broadcast(); // broadcast ikikere calitırdımda hatayı önlüyor
Stream<int> get myStream => _controller.stream;
Sink<int> get mySink => _controller.sink;

void main(List<String> args) async {
  //temelstremdinleme();
  // subscriptionIslemler();
  broardCastStreamveStreamMetotlari();
}

void streamControllerKullanimi() {
  myStream.listen((event) {
    print(event);
  });
  veriEkle();
}

void veriEkle() async {
  mySink.add(5);
  await Future.delayed(Duration(seconds: 1));
  mySink.add(10);
  await Future.delayed(Duration(seconds: 1));
  mySink.add(15);
}

void temelstremdinleme() {
  myStream.map((event) => event * 2).listen((event) {
    print(event);
  });
  getnumber().listen((event) {
    print(event);
  });
}

void subscriptionIslemler() {
  var subscription = getnumber().listen((data) {
    print(data);
  });
  subscription.onData((data) {
    print(data); //gelen data
  });
  subscription.onError((err) {
    print("hata cıktı $err");
  });
  subscription.onDone(() {
    print("strem sonlandı yield edilen değer kalmadı");
  });
}

Future<void> broardCastStreamveStreamMetotlari() async {
  final myStream = getnumber().asBroadcastStream();
  /*myStream.listen((event) {
    print("1. listen$event");
  });
  myStream.listen((event) {
    print("2.list $event");
  });

  */
  //print("First kullanımı " + (await myStream.first).toString());
  //print("Last kullanımı " + (await myStream.last).toString());
  //print("Length kulllanımı  " + (await myStream.length).toString());
  //print("single kullanımı " + (await myStream.single).toString()); //tekbir döküman
  //print("Contains kukkanımı" + (await myStream.contains(1).toString()));
  //print("EllementAt kullanımı" + (await myStream.elementAt(2).toString()));
  //print("any kullanımı" + (await myStream.any((element) => element == 1)).toString());
  print("Jonikullanımı" + (await myStream.join(',').toString()));
}

void streamMetodlariDevam() async {
  final myStream = getnumber();
  // myStream.expand((element) => [element, element * 2, 99]

//---->*sayıları artıyoru
//----->*yazdım kod sayıyı 2 katını ve 99 yazıyor
  //);

  // myStream.map((event) => event*5).listen((event) {
  // print(event);
  //;

  //---->*maop yapısı değeri değtirek yolluyor iste 5 katu yada null ne yazarsan artık

  // });

  /* myStream.where((event) => event % 2 != 0).listen((event) {
    print(event);

    //--->sadece çifsayıları yazdıran fitreleme işlemi

  });*/

  /*    x   myStream.take(2).listen((event) {
    print(event);
    //listenin ilk iki elamanı
  });*/
}
