import 'package:flutter/material.dart';
import 'package:teste/segundapagina.dart';

class Paginap extends StatelessWidget {
  const Paginap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cscs"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
                accountName: Text("RJN", style: TextStyle(color: Colors.black)),
                accountEmail: Text("raf19_sccp@gmail.com",
                    style: TextStyle(color: Colors.black)),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.bebidaspoty.com.br/wp-content/uploads/2019/03/img_sccp_poty.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(child: Text("Uma categoria")),
              ListTile(
                trailing: CircleAvatar(child: Icon(Icons.padding)),
                leading: Icon(Icons.departure_board),
                title: Text("Menu"),
                subtitle: Text("Bola"),
              ),
              Divider(
                height: 19,
                thickness: 3,
              ),
              Center(child: Text("Outra categoria")),
              ListTile(
                trailing: CircleAvatar(child: Icon(Icons.grade)),
                leading: Icon(Icons.download_done),
                title: Text("Oi"),
                subtitle: Text("R"),
              ),
              Divider(
                height: 19,
                thickness: 3,
              ),
              Center(child: Text("Essa categoria")),
              ListTile(
                trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                leading: Icon(Icons.arrow_back_ios),
                title: Text("Xi"),
                subtitle: Text("de"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Segundap();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Próxima Página'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Segundap();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
