import 'package:flutter/material.dart';

void main() {
   runApp(
      MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'My app', // used by the OS task switcher
         home: MyHomeScreen(),
      ),
   );
}

class MyHomeScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
         appBar: AppBar(
            title: Text('Trang chủ'),
         ),
         body: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  const SizedBox(
                     height: 30,
                  ),
                  const Text(
                     'Lê Hoàng Anh, 08_ĐH_TMĐT',
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                     height: 20,
                  ),
                  buildRowLayout(),
                  const SizedBox(
                     height: 20,
                  ),
                  const SizedBox(
                     height: 10,
                  ),

                  Expanded(
                     child: Container(),
                  ),
                  Image.network(
                     'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                     width: 250,
                  ),
                  Expanded(
                     child: Container(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                         ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(content: Text('Nut da duoc bam!')));
                      },
                      child: Text('Bấm vào đây!')),
                  const SizedBox(
                     height: 40,
                  ),
               ],
            ),
         ),
      );
   }
}

Widget buildRowLayout() {
   return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Container(
            color: Colors.blue,
            height: 100,
            width: 100,
         ),
         Container(
            color: Colors.green,
            height: 100,
            width: 100,
         ),
         Container(
            color: Colors.orange,
            height: 100,
            width: 100,
         )
      ],
   );
}
