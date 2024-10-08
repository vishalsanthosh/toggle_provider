import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_provider/togglepro.dart';

class ToggleScreen extends StatefulWidget {

  @override
  State<ToggleScreen> createState() => _ToggleScreenState();
}

class _ToggleScreenState extends State<ToggleScreen> {
  @override
  Widget build(BuildContext context) {
    final toggleprovider=Provider.of<ToggleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle Screen provider"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(toggleprovider.isOn?"ON":"OFF",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              ElevatedButton(onPressed: (){
                toggleprovider.toggleSwitch();
              }, child: Text(toggleprovider.isOn?"TURN OFF":"TURN ON"))
            ],
          ),
        ),
      ),
    );
  }
}