import 'package:e_commerce_app14/core/functions/check_internet.dart';
import 'package:flutter/material.dart';

class TestPages extends StatefulWidget {
  const TestPages({super.key});

  @override
  State<TestPages> createState() => _TestPagesState();
}

class _TestPagesState extends State<TestPages> {
  
  var res ;

  initialdata ()async {
    res = await checkInternet();
    print(res);
  }
  
  @override
  void initState() {
    initialdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
      ),
      body: Container(
        child: Center(
          child: Text("Test" , style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}