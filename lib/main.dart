import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABSEN MAHASISWA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NAMA NIM MAHASISWA'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StudentInfo(name: 'FIRSTA ZULFATUN YANUASIH', nim: 'STI202102281'),
              StudentInfo(name: 'ATHIROH QOTHRUN NADA', nim: 'STI202102295'),
              StudentInfo(name: 'FIRA ANDIANI', nim: 'STI202102302', backgroundColor: Colors.green),
              StudentInfo(name: 'LAELI NUR ROHMAH', nim: 'STI202102305'),
              StudentInfo(name: 'ANUGRAH BAGUS PRATAMA', nim: 'STI202102306'),
            ],
          ),
        ),
      ),
    );
  }
}

class StudentInfo extends StatelessWidget {
  final String name;
  final String nim;
  final Color? backgroundColor;

  const StudentInfo({Key? key, required this.name, required this.nim, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: $name',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'NIM: $nim',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
