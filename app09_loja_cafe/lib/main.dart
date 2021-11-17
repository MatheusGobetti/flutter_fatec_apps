import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'criar_conta.dart';
import 'login.dart';

Future<void> main() async {
  //
  // INICIALIZAR OS Plugins
  //
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/criar_conta': (context) => CriarContaPage(),
        '/principal': (context) => PrincipalPage(),
      },
    ),
  );
}

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  // Referenciar a coleção do Firestore
  late CollectionReference cafes;
  @override
  void initState() {
    super.initState();
    cafes = FirebaseFirestore.instance.collection('cafes');
  }

  // Especificar a aparencia de cada elemento da lista
  exibirItemColecao(item) {
    String nome = item.data()['nome'];
    String preco = item.data()['preco'];
    return ListTile(
      title: Text(nome, style: const TextStyle(fontSize: 30)),
      subtitle: Text('R\$ $preco', style: const TextStyle(fontSize: 25)),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          // Apagar um documento
          cafes.doc(item.id).delete();
        },
      ),
      onTap: () {
        Navigator.pushNamed(context, '/cadastro', arguments: item.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Café Store'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            icon: Icon(Icons.logout_outlined),
            onPressed: () async {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
      backgroundColor: Colors.brown.shade100,

      // Listar os documentos da coleção

      body: StreamBuilder<QuerySnapshot>(
          // Fonte de dados
          stream: cafes.snapshots(),
          // Exibir os dados retornados
          builder: (context, snapshot) {
            // Verificar o estado da conexão
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(
                  child: Text('Não foi possivel conectar ao Firestore'),
                );
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              // Se os dados forem recebidos com sucesso
              default:
                final dados = snapshot.requireData;
                return ListView.builder(
                  itemCount: dados.size,
                  itemBuilder: (context, index) {
                    return exibirItemColecao(dados.docs[index]);
                  },
                );
            }
          }),
    );
  }
}
