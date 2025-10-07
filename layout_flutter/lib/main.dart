import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Malang',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(Icons.star, color: Colors.red[500]),
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
        'Gunung Bromo adalah salah satu gunung api yang masih aktif di Indonesia. Gunung yang memiliki ketinggian 2.392 meter di atas permukaan laut ini merupakan destinasi andalan Jawa Timur. Gunung Bromo berdiri gagah dikelilingi kaldera atau lautan pasir seluas 10 kilometer persegi.' 
        'Wisatawan yang berkunjung ke Gunung Bromo akan disambut oleh pemandangan yang indah. Salah satu hal yang terkenal dari Gunung Bromo adalah golden sunrise-nya, pasalnya, Gunung Bromo dinobatkan sebagai tempat yang menawarkan pemandangan matahari terbit terbaik di Pulau Jawa.'
        'Sesaat setelah momen matahari terbit berakhir, wisatawan akan kembali disuguhkan pemandangan yang tak kalah indanya, yaitu pemandangan negeri di atas awan. ABDUL AZIZ - 244107023009',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: ABDUL AZIZ - 244207023009',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'images/bromo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
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
