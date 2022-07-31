import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> iconList = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child:
                Center(child: Text('This is where the question text will go.')),
          ),
        ),
        InkWell(
          onTap: () {
            iconList.add(const Icon(Icons.check, color: Colors.green));
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              child:
                  Center(child: Text('True', style: TextStyle(fontSize: 20))),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            iconList.add(Icon(Icons.cancel, color: Colors.red));
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              child: Center(child: Text('False')),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.red),
            ),
          ),
        ),
        Row(
          children: iconList,
        )
      ],
    );
  }
}
