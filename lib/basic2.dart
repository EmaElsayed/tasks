import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlogScreen());
  }


}

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? Key}) : super(key: Key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}
class _BlogScreenState extends State<BlogScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog"),
      ),
    );
  }
}