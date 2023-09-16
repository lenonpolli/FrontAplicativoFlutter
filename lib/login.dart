import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

    

      
    body: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color.fromARGB(255, 248, 203, 2), Color.fromARGB(115, 10, 10, 10)])),

      child: Column(mainAxisAlignment: MainAxisAlignment.center,
    
      children: [

      Container(

        width: 200,
        height: 200,
        
        child: Image.asset('assets/images/abelha.png'),),
      SizedBox(height: 30,),
   
      TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Login'),),

      SizedBox(height: 10,),

      TextField(decoration: InputDecoration(border:(OutlineInputBorder()),labelText: 'Senha'),),
    
      SizedBox(height: 10,),

  ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.yellow, // background
    onPrimary: Colors.black, // foreground
  ),
  onPressed: () { },
  child: Text('ENTRAR'),
)
      
      
      
      
      
      
      
      
      
      
      
      
      
      ],
    
      
      
      
      
      
      
      ),
    ),

             
      
        

       

      
    );
  }
}