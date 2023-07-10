import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditNoteScreen  extends StatefulWidget {
  EditNoteScreen ({super.key, required this.id});
final String id;
  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final noteController = TextEditingController();

  final firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              controller: noteController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Note",
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                onPressed: () => editNote(widget.id),
                child: const Text("Add"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  editNote(String id) {
    String note = noteController.text;

    // Map<String, dynamic> => key : value
    // "id" : 1
    // "note" : "Wake up"
    // "favourite" : false

    String currentMillis = DateTime.now().millisecondsSinceEpoch.toString();



    firestore.collection("notes").doc(id).update(

      {
        "note": note
      }
    );
Navigator.pop(context,note);

  }
}
