import 'package:flutter_getx_state_management/student.dart';
import 'package:get/get.dart';

class MyControl extends GetxController {
  // Getx Controller is used to separate the Business Logic from the UI code
  var student = Student(name: "Tomiwa", age: 23).obs;


  // a function to convert to Upper case
  void convertToUpperCase() {
    student.update((student) {
      student?.name = student.name.toString().toUpperCase();
    });
  }

  // a function to convert to Upper case
  void convertToLowerCase() {
    student.update((student) {
      student?.name = student.name.toString().toLowerCase();
    });
  }

  // an increment count function
  var count = 0;
  void increment() {
    count++;
    update();
  }
}
