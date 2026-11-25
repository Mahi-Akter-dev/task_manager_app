import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';
import 'package:task_manager/task_manager/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel taskModel;
  final Color cardColor;
  final VoidCallback refreshParent;

  const TaskCard({
    super.key,
    required this.taskModel,
    required this.cardColor,
    required this.refreshParent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          taskModel.title.toString(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(taskModel.description.toString()),
            SizedBox(height: 5),
            Text('Date:${taskModel.createdDate}'),

            Row(
              children: [
                Chip(
                  label: Text(
                    taskModel.status.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: cardColor,
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
