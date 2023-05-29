import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RendomPage extends StatelessWidget {
  const RendomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoButton(
          child: Icon(Icons.arrow_back_ios, color: Colors.white,), 
          onPressed: (){Navigator.pop(context);}
        ),
        title: Text("Rendom Page"),
        actions: [
          CupertinoButton(
            child: Icon(Icons.refresh_rounded, color: Colors.white,),
            onPressed: (){},
          )
        ],
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Text("Rendom Page")
        ),
      ),
    );
  }
}