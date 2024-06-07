import 'package:flutter/material.dart';

class Pagina extends StatelessWidget {
  const Pagina({super.key});

  @override

  Widget build(BuildContext context) {
    var estiloTexto = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("snf"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Texto da linha 1 grande kkkk",
            style: estiloTexto,
          ),
          Text(
            "Text",
            style: estiloTexto,
          ),
          Text(
            "Texto da linha 1 grande  ",
            style: estiloTexto,
          ),
          Text(
            "Tex",
            style: estiloTexto,
          ),
          Text(
            "Texto da linha 1 grande",
            style: estiloTexto,
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Text",
                style: estiloTexto,
              ),
              SizedBox(width: 38),
              Text(
                "Text",
                style: estiloTexto,
              ),
              SizedBox(width: 38),
              Icon(Icons.mouse),
              SizedBox(width: 39),
              Text(
                "Text",
                style: estiloTexto,
              ),
              SizedBox(width: 38),
              Text(
                "Text",
                style: estiloTexto,
              ),
              SizedBox(width: 38),
            ],
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('SA'),
                    action: SnackBarAction(
                      label: 'Feito',
                      onPressed: () {},
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('UM'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('sdv'),
                    action: SnackBarAction(
                      label: 'Feito',
                      onPressed: () {},
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Dois'),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Buuuh'),
                    action: SnackBarAction(
                      label: 'Feito',
                      onPressed: () {},
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Row(
                  children: [
                    Text("Play"),
                    Icon(Icons.mouse),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: RichText(
              text: TextSpan(


                children: [
                  TextSpan(text: ' Texto multi'),
                  TextSpan(text: 'estilo', style: TextStyle(color: Colors.red)),
                  TextSpan(text: ' mais fácil'),
                  TextSpan(text: 'que fazer linhas ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' e textos separados!'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
