import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          'Text title',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Des'),
            SizedBox(height: 5),
            Text('Date: 20/20/26'),

            Row(
              children: [
                Chip(
                  label: Text('New', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.blue,
                ),

                Spacer(),

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit_note, color: Colors.orange),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
