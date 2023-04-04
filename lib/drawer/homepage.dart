import 'package:day_13/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      key: _scaffoldkey,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          _scaffoldkey.currentState!.openDrawer();
        }, icon: Icon(Icons.menu)),
        title: Text("Drawer Demo Work No: 3"),
        centerTitle: true,
      ),
    );
  }
}