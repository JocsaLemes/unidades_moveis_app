import 'package:flutter/material.dart';

class ClassHome extends StatefulWidget {
  const ClassHome({super.key});

  @override
  State<ClassHome> createState() => _ClassHomeState();
}

class _ClassHomeState extends State<ClassHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 50, 99),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 154, 181, 213),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("INÍCIO", style: TextStyle(color: Colors.white)),
            Container(
              width: 65,
              height: 65,
              child: Image.asset("assets/logo_map.png"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
        child: ListView(
          children: [
            //botão iniciar viagem
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Vai abrir a tela de viagens")),
                  );
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 154, 181, 213),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundColor: Color.fromARGB(255, 33, 50, 99),
                          child: Icon(
                            Icons.commute_outlined,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Iniciar uma viagem",
                          style: TextStyle(fontSize: 40, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //botão cadastrar motorista
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Vai abrir a tela de motorista")),
                  );
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 154, 181, 213),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundColor: Color.fromARGB(255, 33, 50, 99),
                          child: Icon(
                            Icons.person_add_alt,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Cadastrar um motorista",
                          style: TextStyle(fontSize: 40, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //botão historico de viagem
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Vai abrir a tela de historicos")),
                  );
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 154, 181, 213),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundColor: Color.fromARGB(255, 33, 50, 99),
                          child: Icon(
                            Icons.list_alt,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Histórico das viagens",
                          style: TextStyle(fontSize: 40, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //botão agenda de veiculo
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Vai abrir a tela de veiculos")),
                  );
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 154, 181, 213),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundColor: Color.fromARGB(255, 33, 50, 99),
                          child: Icon(
                            Icons.check_circle_outline_sharp,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Agenda de veículos",
                          style: TextStyle(fontSize: 40, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
