import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question...'),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Aswer 1'
            ),

          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
                'Aswer 2'
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
                'Aswer 3'
            ),
          ),

        ],
      ),
    );
  }
}
