import 'package:aplicativoabelha/produtos.dart';
import 'package:flutter/material.dart';

import 'home.dart';


class cadastroProdutos extends StatefulWidget {
  const cadastroProdutos({super.key});

  @override
  State<cadastroProdutos> createState() => _cadastroProdutosState();
}

class _cadastroProdutosState extends State<cadastroProdutos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text('CADASTRAR PRODUTOS')),
      body: formCadastro(),


      drawer: const NavigationDrawer(),
      
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

class formCadastro extends StatelessWidget {
  const formCadastro({super.key});

  @override
  Widget build(BuildContext context) =>  ListView(children:  [
    SizedBox(height: 10,),
    TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'ID DO PRODUTO'),),
    SizedBox(height: 10,),
    TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'NOME DO PRODUTO'),),
    SizedBox(height: 10,),
    TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'QUANTIDADE'),),
    SizedBox(height: 10,),
    TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'MARCA'),),
    SizedBox(height: 10,),
     ElevatedButton(onPressed: () {
       
     }, child: Text('CADASTRAR PRODUTO')),
     BackButton(onPressed: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const homePage(),));
       
     },)
  ],);
   
  
}