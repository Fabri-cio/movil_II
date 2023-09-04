import 'package:logincrud/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../services/firebase_service.dart';

class EditNamePage extends StatefulWidget {
  const EditNamePage({super.key});
  @override
  State<EditNamePage> createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    nameController.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Actualice el nombre',
              ),
            ),
            Text(
              arguments['uid'],
              style: const TextStyle(fontSize: 10),
            ),
            ElevatedButton(
                onPressed: () async {
                  await updatePeople(arguments['uid'], nameController.text);
                  await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: const Text("Actualizar"))
          ],
        ),
      ),
    );
  }
}
