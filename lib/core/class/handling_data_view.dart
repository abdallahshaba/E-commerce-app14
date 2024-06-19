
import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest== StatusRequest.loading ? 
      const Center(child: Text("Loading..."),) 
      : 
      statusRequest== StatusRequest.offlineFailure?
      const Center(child: Text("Offline Failure"),) 
      :
      statusRequest== StatusRequest.serverFaliure?
      const Center(child: Text("Server Failure"),) 
      :
      statusRequest== StatusRequest.failure?
      const Center(child: Text("No Data"),)
      :
      widget;

  }
}