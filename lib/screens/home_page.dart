import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}
class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext context){
                    return Dialog(
                      child: Container(
                        height: 300,
                        color: Colors.cyan.withOpacity(0.1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlutterLogo(size: 150,),
                            Text("This is a Custom Dialog",style:TextStyle(fontSize: 20),),
                            ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                }, child: Text("Close"))
                          ],
                        ),
                      ),
                    );
                  }
              );
            },
            child: Text("Custom Dialog"),
          ),
        ),
      ),
    );
  }
}