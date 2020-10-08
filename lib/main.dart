import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class Tarea extends StatefulWidget {

  var laTarea;
  // constructor
  Tarea(t){
    print("constructor de la tarea"+t['nombre']);
    this.laTarea=t;
  }

  @override
  State<Tarea> createState() {
    print("Create una tarea");
    return new TareaState(laTarea);
  }
}

class TareaState extends State<Tarea>{

  var tst;
  TareaState(ts){
    this.tst = ts;
  }
  click() {
    print("click");
    setState(() {
      tst['done'] = !tst['done'];
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left:21),
        child:Row(
          children: [
            if(tst['done'])
              Icon(Icons.done)
            else
              Icon(Icons.clear),

          FlatButton(
            onPressed: click,
            child:Text ("  "+tst['nombre'])
          )
          ],
        )
        //Text(tst['nombre'].toString())
    );
  }
}

class MyApp extends StatelessWidget {

  var tareaejemplo =[
    { "nombre": "Tarea 1","done": true},
    { "nombre": "Tarea 2","done": true},
    { "nombre": "Tarea 3","done": true},
    { "nombre": "Tarea 4","done": true},
    { "nombre": "Tarea 5","done": true},
    { "nombre": "Tarea 6","done": true},
    { "nombre": "Tarea 8","done": true},
    { "nombre": "Tarea 9","done": true},
    { "nombre": "Tarea 10","done": true}


  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: ListView(
          children:[
            for(var t in tareaejemplo) new Tarea(t)
          ],
            /*Container(
              padding: EdgeInsets.all(20),
             decoration: BoxDecoration(
               color: Colors.blue,
             ),
             child: Row(
                children: [
                    Tarea(tareaejemplo),*/
                  /*

                  if(tarea['done'])
                    Icon(Icons.done)
                  else
                    Icon(Icons.clear),

                  Text ("  "+tarea['nombre'])

                   */
              )
          )
    );
  }
}
