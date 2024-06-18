import 'package:e_commerce_app14/controllers/test_controller.dart';
import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestDataConteoller());
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Data"),
      ),
      body: GetBuilder<TestDataConteoller>  (
        builder: (controller) {
          if (controller.statusRequest== StatusRequest.loading) {
            return const Center(child: Text("Loading..."),);
          }
          else if (controller.statusRequest== StatusRequest.offlineFailure){
            return const Center(child: Text("Offline Failure"),);
          }
          else if (controller.statusRequest== StatusRequest.serverFaliure){
            return const Center(child: Text("Server Failure"),);
          }
          else {
            return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context , index){
                return Text("${controller.data}");
              }
              );
          }
        }
         ),
    );
  }
}