import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/categorypage.dart';
import 'package:food/rendom.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                color: Colors.blue,
                pressedOpacity: 0.7,
                child: Text("Rendom"), 
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => RendomPage(),));
                }
              ),
              SizedBox(height: 15,),
              CupertinoButton(
                color: Colors.blue,
                pressedOpacity: 0.7,
                child: Text("Category"), 
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CatogaryPage(),));
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}