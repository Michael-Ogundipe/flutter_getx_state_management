import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/my_controller.dart';
import 'package:flutter_getx_state_management/student.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // an instance of the controller
  final MyControl _myControl = Get.put(MyControl());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Reactive & Simple State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("Name is ${_myControl.student.value.name}")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: const Text("To UpperCase"),
                    onPressed: () {
                      // this changes the variable to uppercase
                      _myControl.convertToUpperCase();
                    },
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  TextButton(
                    child: const Text("To LowerCase"),
                    onPressed: () {
                      // this changes the variable to uppercase
                      _myControl.convertToLowerCase();
                    },
                  )
                ],
              ),
              const SizedBox(height: 50.0),
              GetBuilder<MyControl>(
                builder: (_myControl) {
                  return Text("The Count value is ${_myControl.count}");
                },),
              TextButton(
                child: const Text("Increase Count"),
                  onPressed: (){
                    _myControl.increment();
                  } )
            ],
          ),
        ),
      ),
    );
  }
}
