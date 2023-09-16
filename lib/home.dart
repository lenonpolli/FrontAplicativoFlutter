import 'package:aplicativoabelha/cadastrarproduto.dart';
import 'package:aplicativoabelha/produtos.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text('HOME')),


      drawer: const NavigationDrawer()
    );
    
  }
  
  
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context)  => Drawer(
    child: SingleChildScrollView(child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        buildHeader(context),
        buildMenuItems(context),

      ],)),
  );
    
    Widget buildHeader(BuildContext context) => 
      
    
    
  Container(
      color: Colors.red,
      padding: EdgeInsets.only(top:24+ MediaQuery.of(context).padding.top,bottom: 24),
      

      child: Column(
        children: [
          CircleAvatar(radius: 52,backgroundColor: Colors.black,),
          SizedBox(height: 12,),

        Text('Seu Nome',style: TextStyle(fontSize: 28,color: Colors.blue),)
        ]
        
        ),
    );


    Widget buildMenuItems(BuildContext context) => Container(padding: const EdgeInsets.all(24),
      
      child: Column(
    
        
        
        children: [
        ListTile(
          
        leading: const Icon(Icons.home_outlined),
        title: const Text('Inicio'),
        onTap: () {

          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const homePage(),));
          
        },
        ),
         ListTile(
          
        leading: const Icon(Icons.favorite_border),
        title: const Text('Produtos'),
        onTap: () {

           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const produtos(),));
          
        },
         ),
         const Divider(color: Colors.black,),
         ListTile(
          
        leading: const Icon(Icons.update),
        title: const Text('Cadastrar Produto'),
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const cadastroProdutos(),));
        },
         ),
         ListTile(
          
        leading: const Icon(Icons.update),
        title: const Text('Notificações'),
        onTap: () {
          
        },
         )
      ],),
    );
    
}