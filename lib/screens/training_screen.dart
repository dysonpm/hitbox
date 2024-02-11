import 'package:flutter/material.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: Colors.black,
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Video
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Circuit 1: Jab',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Icon(
                            Icons.loop,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '3 sets',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
