import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:wangaya/RealtimeButtonDatabaseCRUD/create_button_sheet.dart';
import 'package:wangaya/RealtimeButtonDatabaseCRUD/update_button_sheet.dart';

class RealTimeCRUDEdatabase extends StatefulWidget {
  const RealTimeCRUDEdatabase({super.key});
  @override
  State<RealTimeCRUDEdatabase> createState() => _RealTimeCRUDEdatabaseState();
}

final DatabaseReference ref = FirebaseDatabase.instance.ref();

class _RealTimeCRUDEdatabaseState extends State<RealTimeCRUDEdatabase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Add Infomation'),
      ),
      //For read/display operation
      body: Column(
        children: [
          Expanded(
              child: FirebaseAnimatedList(
                  query: ref,
                  itemBuilder: (context, snapshot, index, animation) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          snapshot.child("name").value.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                            Text(snapshot.child("address").value.toString()),
                        leading: CircleAvatar(
                            backgroundColor: Colors.blue[100],
                            child: Text(snapshot.child("sn").value.toString())),
                        trailing: PopupMenuButton(
                          icon: const Icon(Icons.more_vert),
                          itemBuilder: (context) => [
                            //For update Operation
                            PopupMenuItem(
                              value: 1,
                              child: ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  updateButtonSheet(
                                      context,
                                      snapshot.child("name").value.toString(),
                                      snapshot.child("id").value.toString(),
                                      snapshot
                                          .child("address")
                                          .value
                                          .toString(),
                                      snapshot.child("sn").value.toString());
                                },
                                leading: const Icon(Icons.edit),
                                title: const Text('Edit'),
                              ),
                            ),
                            //For delete Operation
                            PopupMenuItem(
                              value: 1,
                              child: ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  ref
                                      .child(
                                          snapshot.child("id").value.toString())
                                      .remove();
                                },
                                leading: const Icon(Icons.delete),
                                title: const Text('Delete'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createButtonSheet(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
