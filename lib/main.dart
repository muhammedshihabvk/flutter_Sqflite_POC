import 'package:flutter/material.dart';
import 'package:sample2/Database/DBService.dart';
import 'package:sample2/Database/Slot.dart';

void main() async {
  runApp(MyApp());
  // final result = await DBService().saveNotificationData(Slot(timestamp: DateTime.now().toString(), payload: "shihab"));
  // final resultSet = await DBService().readNotification(); //read all notification
  // final slotList = DBService().getSlotList(resultSet);
  // slotList.forEach((element) {
  //   print(element?.payload);
  // });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter sqflite POC',
      home: Scaffold(
        body: Container(
          child: Text("Check in console"),
        ),
      ),
    );
  }
}
