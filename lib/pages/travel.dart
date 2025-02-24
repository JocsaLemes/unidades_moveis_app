import 'package:flutter/material.dart';
import 'package:unidades_moveis_app/pages/home.dart';
import 'package:unidades_moveis_app/style/custom_drawer.dart';

class ClassTravel extends StatefulWidget {
  const ClassTravel({super.key, required this.title});

  final String title;

  @override
  State<ClassTravel> createState() => _TravelPageState();
}

class _TravelPageState extends State<ClassTravel> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String carPlate = "Veículo - Placa";

  void funcSelectCarPlate(String newCarPlate) {
    setState(() {
      carPlate = newCarPlate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 50, 99, 1),
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 154, 181, 213),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Viagem", style: TextStyle(color: Colors.white)),
            SizedBox(
              width: 65,
              height: 65,
              child: Image.asset("assets/logo_map.png"),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 10, 70, 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 146, 168, 230)),
                  child: ExpansionTile(
                    title: Text(
                      carPlate,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text("Argo www-7w77"),
                        onTap: () => funcSelectCarPlate("Argo www-7w77"),
                      ),
                      ListTile(
                        title: Text("Argo www-8w88"),
                        onTap: () => funcSelectCarPlate("Argo www-8w88"),
                      ),
                      ListTile(
                        title: Text("Argo www-9w99"),
                        onTap: () => funcSelectCarPlate("Argo www-9w99"),
                      ),
                      ListTile(
                        title: Text("Argo www-1w11"),
                        onTap: () => funcSelectCarPlate("Argo www-1w11"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ClassHome()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 146, 168, 230),
                      foregroundColor: Colors.black,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      minimumSize: Size(200, 60),
                    ),
                    child: Text(
                      'Iniciar Viagem',
                      style: TextStyle(fontSize: 24),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
