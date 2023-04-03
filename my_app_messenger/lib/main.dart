import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Messenger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Tìm kiếm",
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, left: 10, bottom: 5),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.network(
                              "https://www.w3schools.com/howto/img_avatar.png",
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Baby",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 10, right: 10),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.network(
                                'https://www.w3schools.com/howto/img_avatar.png'),
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "Baby",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text("Hello ")
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: 10,
                      )),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.chat,
                          color: Colors.blue,
                          size: 35,
                        ),
                        Text("Chats")
                      ],
                    ),
                  ),
                  Expanded(flex: 2, child: Center()),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.bookmark_add_rounded,
                          color: Colors.blue,
                          size: 35,
                        ),
                        Text("Story")
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: 10,
                      ))
                ],
              ),
            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
