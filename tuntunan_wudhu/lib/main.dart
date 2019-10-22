import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tuntunan Wudhu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuntunan Wudhu"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-1.jpg",
              "1. Mencuci kedua telapak tangan sebanyak tiga kali.",
              "Dengan gerakan menyeka pada sela-sela jari telapak tangan yang dimulai dari tangan kanan kemudian tangan kiri kemudian diriringi dengan membaca doa: \nاَلْحَمْدُ ِللهِ الَّذِي جَعَلَ اْلمَاءَ طَهُوْرًا"),
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-2.jpg",
              "2. Berkumur.",
              "Berkumur sebanyak 3 kali, dengan gerakan utuh membersihkan mulut (bahkan dari sisa-sisa makanan yang masih ada pada mulut).\n اللَّهُمَّ اَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ"),
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-3.jpg",
              "3. Membasuh hidung.",
              "Membasuh lubang hidung secara menyeluruh, sebanyak 3 kali gerakan. \nاَللَّهُمَّ أَرِحْنِي رَائِحَة الجَـنَّةَْ"),
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-4.jpg",
              "4. Membasuh Muka.",
              "Membasuh seluruh permukaan wajah dengan rata, sebanyak 3 kali gerakan memutar sekeliling wajah. \nاَللَّهُمَّ بَيِّضْ وَجْهِى يَوْمَ تَبْيَضُّ وُجُوْهٌ وَتَسْوَدُّ وُجُوْهٌَْ"),
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-5.jpg",
              "5. Membasuh kedua tangan.",
              "Membasuh kedua tangan hingga mencapai siku, sebanyak 3 kali gerakan memutar dan menyeluruh ke permukaan tangan. \nTangan Kanan : اَللَّهُمَّ اَعْطِنِى كِتاَبِى بِيَمِيْنِى وَحَاسِبْنِى حِسَاباً يَسِيْرًاَْ \nTangan Kiri : اَللَّهُمَّ لاَ تُعْطِنِى كِتاَبِى مِنْ يَساَرِىْ وَ لاَ مِنْ وَرَاءِ ظَهْرِىْ"),
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-6.png",
              "6. Membasuh kepala mulai dari ubun-ubun.",
              "Membasuh kening hingga ujung kening (ubun-ubun) sampai sebagian kepala, sebanyak 3 kali gerakan menyeluruh. \nاَللَّهُمَّ حَرِّمْ شَعْرِيْ وَبَشَرِيْ عَلَى النَّارِ"),
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-7.jpg",
              "7. Membasuh keduan telinga.",
              "Membasuh kedua tengila baik itu bagian dalam maupun luar telinga (daun telinga) hingga menyeluruh ke bagian telinga, sebanyak 3 kali gerakan. \nاَللَّهُمَّ اجْعَلْنِي مِنَ الَّذِيْنَ يَسْتَمِعُوْنَ اْلقَوْلَ فَيَتَّبِعُوْنَ أَحْسَنَهُ"),
          _createPageItemUI(
              "https://storage.googleapis.com/bbc.dalamislam.com/2015/11/wudhu-8.jpg",
              "8. Mencuci kedua kaki.",
              "Membasuh kedua kaki dan diusahakan menyeluruh tidak pada bagian depan saja, basuh hingga ke seluruh kaki hingga ke mata kaki. Kaki Kanan : اَللَّهُمَّ ثَبِّتْ قدَمِي عَلَى الصِّرَاطِ يَوْمَ تَزِلُّ فِيْهِاْ لاَقْدَامِ Kaki Kiri : اَللّهمَّ اِنِّى اَنْتُجِلَ قَدَمِ عَلَى صِرَاطِ فِى النَّارْ يَوْمَ تِجِلُ اَقْدَمِ المُنَافِقِيْنْ وَ المُشْرِكِينْ"),
          _createPageItemUI(
              "http://1.bp.blogspot.com/--_5_DnQdpJs/W0LjWvyOQpI/AAAAAAAAAnY/739UGO7vtCQ4P40N9OdsOujaFpofe8llgCK4BGAYYCw/s1600/urutan%2Bwudhu.jpg",
              "9. Tertib",
              "dan diusahakan berwudhu dengan cara berurutan (tidak meloncat urutan dalam wudhu yang benar)."),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String urlGambar, String Judul, String penjelasan) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(urlGambar),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              Judul,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              penjelasan,
              style: TextStyle(fontSize: 15.0),
            ),
          )
        ],
      ),
    );
  }
}
