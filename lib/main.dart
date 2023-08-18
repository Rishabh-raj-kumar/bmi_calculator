import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var res = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  child: Text(
                'BMI',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              )),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: wtController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text('ENTER YOUR WEIGHT'),
                        prefixIcon: Icon(Icons.line_weight),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: wtController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text('ENTER YOUR HEIGHT(in feet)'),
                        prefixIcon: Icon(Icons.line_weight),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: wtController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text('ENTER YOUR HEIGHT(in Inch)'),
                        prefixIcon: Icon(Icons.line_weight),
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            var wt = wtController.text.toString();
                            var ft = ftController.text.toString();
                            var In = inController.text.toString();

                            if(wt != '' && ft != '' && In != ''){

                            }else{
                               setState(() {
                                 res = 'Something is missing...';
                               });
                            }
                          }, child: Text('CALCULATE',style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor:  Colors.black),))
                ],
              ),
              Text("$res"),
            ],
          ),
        ));
  }
}
