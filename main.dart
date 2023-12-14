import 'package:flutter/material.dart';
import 'foodMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<foodMenu> menu = [
    foodMenu("Pizza", "200", "assets/images/pizza.jpg"),
    foodMenu("Costolettaalla Milanese", "150",
        "assets/images/costolettaallaMilanese.jpg"),
    foodMenu("Fettuccine al Pomodoro", "100", "assets/images/Fettuccine.jpg"),
    foodMenu("Gnocchi di Patate", "120", "assets/images/Gnocchi.jpg"),
    foodMenu("Melanzane alla Parmigiana", "150", "assets/images/Melanzanz.jpg"),
    foodMenu("Pannacotta", "100", "assets/images/Pannacotta.jpg"),
    foodMenu("Pollo alla Cacciatora", "150", "assets/images/Pollo.jpg"),
    foodMenu("Spaghetti-Carbonara", "120", "assets/images/Spaghetti.jpg"),
    foodMenu("Tiramisù", "100", "assets/images/Tiramisu.jpg"),
    foodMenu(
      "Vitello Tonnato",
      "150",
      "assets/images/Vitello.jpg",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Menu',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(
              menu[index].img,
              width: 200,
              fit: BoxFit.cover,
            ),
            title: Text(
              menu[index].name,
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            subtitle: Text(
              'Price: ${menu[index].price} Baht',
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
            onTap: () {
              print(" You Choose ${menu[index].name}");
              AlertDialog alert = AlertDialog(
                backgroundColor: Colors.blue[100],
                title: Text("  You Choose ${menu[index].name}"),
                content: Text("Price: ${menu[index].price} Baht"),
                actions: [
                  TextButton(
                    child: Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alert;
                },
              );
            },
          );
        },
      ),
    );
  }
}
