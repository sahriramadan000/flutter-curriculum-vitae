import 'package:flutter/material.dart';

class BodySection extends StatefulWidget {
  const BodySection({super.key});
  
  @override
  BodySectionState createState() => BodySectionState();
}

class BodySectionState extends State<BodySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          buildSection(Icons.person, 'Data Diri', [
            buildItem(
              title: 'Tempat, Tanggal Lahir',
              subtitle: 'Jakarta, 27 Oktober 2003',
            ),
            buildItem(
              title: 'Email',
              subtitle: 'sahriramadan000@gmail.com',
            ),
            buildItem(
              title: 'Phone',
              subtitle: '08772345678',
            ),
          ]),
          buildSection(Icons.work, 'Riwayat Pekerjaan', [
            buildItem(
              title: 'PT. Kamiko Cipta Solusi',
              subtitle: 'Software Engineer, (Jan 2021 - Okt 2022)',
            ),
            buildItem(
              title: 'PT. Giva Pilar Controlindo',
              subtitle: 'Software Engineer, (Okt 2022 - Sekarang)',
            ),
          ]),
          buildSection(Icons.school, 'Pendidikan', [
            buildItem(
              title: 'S1, Teknik Informatika',
              subtitle: 'Universitas Esa Unggul Jakarta, Saat ini.',
            ),
            buildItem(
              title: 'SMK, Rekayasa Perangkat Lunak',
              subtitle: 'SMK TARUNA BANGSA, 2021.',
            ),
          ]),
        ],
      ),
    );
  }

  Widget buildSection(IconData icon, String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 24,
                color: Colors.black,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        ...items,
      ],
    );
  }

  Widget buildItem({required String title, required String subtitle}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 52, vertical: 4),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}