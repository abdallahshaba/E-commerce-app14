import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,
        onPressed: (){} , child:  Icon(Icons.shopping_basket_outlined , color: Colors.white,),
        backgroundColor: Colors.blue,
        ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        height: 70,
        child: Row(
          children: [
            MaterialButton(
              onPressed: () {},
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home), Text("Home")],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.settings), Text("Home")],
              ),
            ),
            Spacer(),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.home), Text("Home")],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.settings), Text("Home")],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Home Screen"),
          ),
        ],
      ),
    );
  }
}
