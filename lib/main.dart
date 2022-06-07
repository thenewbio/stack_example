import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StackWidget(title: 'Stack Widget Flutter'),
    );
  }
}

class StackWidget extends StatefulWidget {
  final String title;
  const StackWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/mac.jpg',
                fit: BoxFit.fill,
              ),
              const Positioned(
                  top: 0,
                  right: 0,
                  child: SizedBox(
                      height: 50,
                      child: FractionalTranslation(
                          translation: Offset(0.3, -0.3),
                          child: CircleAvatar(
                            child: Icon(Icons.star),
                          )))),
              const Positioned(
                  bottom: 5,
                  left: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/eagle.jpg'),
                  )),
              Positioned(
                  bottom: 5,
                  right: 10,
                  child: Text(
                    'MacBook',
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        const Text("That's how to stack images and text widget in flutter")
      ],
    ));
  }
}
