import 'package:flutter/material.dart';
import 'package:flutter_tugas3/widgets/header_section.dart';
import 'package:flutter_tugas3/widgets/body_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight + 5),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Curriculum Vitae',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
    ),
      resizeToAvoidBottomInset: true, // Memastikan Scaffold menghindari keyboard
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const HeaderSection(),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: const BodySection(), // Pastikan BodySection() dapat menyesuaikan dengan konten yang ada
            ),
          ],
        ),
      ),
    );
  }
}