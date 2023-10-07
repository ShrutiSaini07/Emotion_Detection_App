import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:teachable_machine_project/home.dart';


List<CameraDescription>? cameras;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
