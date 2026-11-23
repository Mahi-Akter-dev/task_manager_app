import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';
import 'package:task_manager/task_manager/widgets/task_card.dart';
import 'package:task_manager/task_manager/widgets/task_card_count.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 100,
                  child: TaskCardCount(title: 'New', count: 25),
                );
              },

              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 5);
              },
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return TaskCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
