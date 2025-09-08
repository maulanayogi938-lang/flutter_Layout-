import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Terunyan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Bali, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Desa Trunyan adalah salah satu desa tertua di Bali yang dihuni oleh suku Bali Aga. Nama Trunyan berasal dari pohon wangi raksasa bernama Taru Menyan. Desa ini terkenal karena tradisi pemakaman yang sangat unik, di mana jenazah tidak dikubur atau dibakar, melainkan hanya diletakkan di bawah pohon tersebut. Keunikan ini menjadikan Trunyan sebagai desa yang kaya akan sejarah, tradisi, dan spiritualitas.'
        ' identitas Anda: Yogi Maulana - 362458302116. ', // Ganti dengan nama dan NIM kamu
        
        softWrap: true,
      ),
    );

    Widget imageSection = 
    Image.asset(
      'assets/trunyan.jpg', // Sesuaikan dengan nama file gambar yang kamu gunakan
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );

    return MaterialApp(
      title: 'Yogi Maulana 116', // Ganti dengan nama dan NIM kamu
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Desa Bali Aga'),
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
     ],
);
}
}