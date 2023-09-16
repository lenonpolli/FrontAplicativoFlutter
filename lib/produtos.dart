import 'package:aplicativoabelha/cadastrarproduto.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class produtos extends StatefulWidget {
  const produtos({super.key});

  @override
  State<produtos> createState() => _produtosState();
}

class _produtosState extends State<produtos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:  const Text('PRODUTOS')),


      drawer: const NavigationDrawer(),

      body: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color.fromARGB(255, 248, 203, 2), Color.fromARGB(115, 10, 10, 10)])),

        
        
        child: ListView(
         
           
            children: <Widget>[
            CardExample(),
            cardProduto2(),
            cardProduto3(),
            cardProduto4(),
            cardProduto5(),
            cardProduto6()
        
          ],),
        )
      
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:<Widget> [

             ListTile(
              leading: Image.asset('assets/images/abelha.png'),
              title: Text('PRODUTO1'),
              subtitle: Text('DESCRIÇÃO DO PRODUTO.'),
            ),

        Row(
         children: <Widget>[
          TextButton(
                  child: const Text('COMPRAR'),
                  onPressed: () {/* ... */}),

          const SizedBox(width: 8),
               TextButton(
                  
                    
                  child: const Text('SALVAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
         ],
         
        ),
              
        ]
        ),
        
      ),

      
      
    );
   
    
  }
}

class cardProduto2 extends StatelessWidget {
  const cardProduto2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Card(child: Column(children: <Widget>[

       ListTile(
        leading: Image.asset('assets/images/abelha.png'),
        title: Text('PRODUTO2'),
        subtitle: Text('DESCRIÇÃO DO PRODUTO2'),
      ),

      Row(children: <Widget>[
        TextButton(
                  child: const Text('COMPRAR'),
                  onPressed: () {/* ... */}),

          const SizedBox(width: 8),
                TextButton(
                  child: const Text('SALVAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
      ],)
      

    ],)),);
  }
}

class cardProduto3 extends StatelessWidget {

  const cardProduto3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Card(child: Column(children: <Widget>[
      ListTile(
        leading: Image.asset('assets/images/abelha.png'),
        title: Text('PRODUTO3'),
        subtitle: Text('DESCRIÇÃO DO PRODUTO3'),
      ),
      Row(
        children: <Widget>[

          TextButton(
                  child: const Text('COMPRAR'),
                  onPressed: () {/* ... */}),

          const SizedBox(width: 8),
                TextButton(
                  child: const Text('SALVAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),

        ],
      )

    ],)),);
  }
}

class cardProduto4 extends StatelessWidget {
  const cardProduto4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Card(child: Column(children: <Widget>[
      ListTile(
        leading: Image.asset('assets/images/abelha.png'),
        title: Text('PRODUTO4'),
        subtitle: Text('DESCRIÇÃO DO PRODUTO4'),
      ),
        Row(children: <Widget>[
          
            TextButton(
                  child: const Text('COMPRAR'),
                  onPressed: () {/* ... */}),

          const SizedBox(width: 8),
                TextButton(
                  child: const Text('SALVAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
            
          
        ],)
    ],),),);
  }
}
class cardProduto5 extends StatelessWidget {

  const cardProduto5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Card(child: Column(children: <Widget>[
      ListTile(
        leading: Image.asset('assets/images/abelha.png'),
        title: Text('PRODUTO5'),
        subtitle: Text('DESCRIÇÃO DO PRODUTO5'),
      ),
      Row(
        children: <Widget>[

          TextButton(
                  child: const Text('COMPRAR'),
                  onPressed: () {/* ... */}),

          const SizedBox(width: 8),
                TextButton(
                  child: const Text('SALVAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),

        ],
      )

    ],)),);
  }
}
class cardProduto6 extends StatelessWidget {
  const cardProduto6({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Card(child: Column(children: <Widget>[

       ListTile(
        leading: Image.asset('assets/images/abelha.png'),
        title: Text('PRODUTO6'),
        subtitle: Text('DESCRIÇÃO DO PRODUTO6'),
      ),

      Row(children: <Widget>[
        TextButton(
                  child: const Text('COMPRAR'),
                  onPressed: () {/* ... */}),

          const SizedBox(width: 8),
                TextButton(
                  child: const Text('SALVAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
      ],)
      

    ],)),);
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