import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widget Project',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 159, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 152, 234, 226),
        title: Text("Custom Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 100, top: 20),
        child: Column(
          children: [
            custom_nametag(
              photo:
                  "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              name: "Joel",
            ),
            SizedBox(
              height: 20,
            ),
            custom_nametag(
                name: "June",
                photo:
                    "https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            SizedBox(
              height: 20,
            ),
            custom_nametag(
                name: "Hila",
                photo:
                    "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            SizedBox(
              height: 20,
            ),
            custom_nametag(
                name: "Jerry",
                photo:
                    "https://images.pexels.com/photos/220429/pexels-photo-220429.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
          ],
        ),
      ),
    );
  }
}

class custom_nametag extends StatelessWidget {
  const custom_nametag({
    super.key,
    required this.name,
    required this.photo,
  });
  final String name;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 89, 167, 232),
            Color.fromARGB(255, 240, 234, 235)
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              photo,
              // "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
            radius: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            // "Joel",
            style: GoogleFonts.jacquardaBastarda9(
                textStyle: TextStyle(color: Colors.black, fontSize: 20)),
          )
        ],
      ),
    );
  }
}
