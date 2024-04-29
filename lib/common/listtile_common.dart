import 'package:class_app/screen/output_screen.dart';
import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final String imageName;
  final int index;
  CommonListTile({

  super.key, required this.index,
    required this.imageName
  });


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircleAvatar(
        backgroundImage: AssetImage('assets/images/$imageName'),
      ),
      title: Text('Tittle ${index + 1}'),
      subtitle: const Text('Subtitle'),
      trailing: const Icon(Icons.delete),
      enableFeedback: true,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder:
            (context) => OutputScreen(index: index)));
      },
    );
  }
}
