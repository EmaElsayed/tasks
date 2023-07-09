import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:NotesScreen ());
  }
}
class NotesScreen  extends StatelessWidget {
   NotesScreen({Key? Key}) : super(key: Key);
  List<Model> chats = [
    Model(name: "Laurent", img: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80", time: "20:18", message: "How about meeting tomorrow?"),
    Model(name: "Tracy", img: "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", time: "19:22", message: "I love that idea,it is great"),
    Model(name: "Claire", img: "https://img.freepik.com/free-photo/portrait-beautiful-young-woman-standing-grey-wall_231208-10760.jpg?size=626&ext=jpg", time: "14:34", message: "I will not come today"),
    Model(name: "Joe", img: "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg", time: "11:05", message: "Immediately"),
    Model(name: "Mark", img: "https://img.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg?w=996&t=st=1688886844~exp=1688887444~hmac=1158a11bc24830cd7669571644b645bb08b2247c8e47a4a9ab1a4f19ce5a65ce", time: "09:46", message: "I will not be able to finish it"),
    Model(name: "Williams", img: "https://img.freepik.com/free-photo/portrait-happy-male-with-broad-smile_176532-8175.jpg?w=996&t=st=1688886878~exp=1688887478~hmac=7261943874570c876037a97a347d8a292f7be92f6c6e4f7d5a66bac9b1ae3114", time: "08:15", message: "I went to a university trip"),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: const Text("Message"))

      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return chatItem(img: chats[index].img, time: chats[index].time, name: chats[index].name, message: chats[index].message);

      },
      itemCount: chats.length,
      ),

    );
  }
}


Widget chatItem({required String img, required String name, required String time, required String message}){
  return   Container(
    margin: EdgeInsets.all(7),
    padding: EdgeInsets.all(3),
    decoration: const BoxDecoration(
        border: Border(

            bottom: BorderSide(width: 1,color: Colors.grey))),


    child: Row(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage:NetworkImage(img
            ),

          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text(name),
                SizedBox(width: 10,),
                Text(time),
              ],),
              Text(message),
            ],
          ),
          Spacer(), Icon(Icons.arrow_forward_ios_rounded),

        ]
    ),
  );
}

class Model{
  String name;
  String img;
  String time;
  String message;

  Model({required this.name, required this.img, required this.time, required this.message});
}

