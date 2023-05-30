import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 45),
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child:
                        CircleAvatar(
                          backgroundColor: data['correct_answer'] == data['user_answer'] as String ? Colors.lightBlueAccent : Colors.pinkAccent,
                          child: Text(((data['question_index'] as int) + 1).toString(), style: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            )
                          ),),
                        ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          data['question'] as String,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              color: Colors.blueGrey,
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
