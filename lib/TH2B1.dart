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
            ElevatedButton(
              // Within the `FirstScreen` Widget
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.white,
              ),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Dart_programming_language_logo.svg/2560px-Dart_programming_language_logo.svg.png',
                width: 250,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              // Within the `FirstScreen` Widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()),
                  );
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.white,
              ),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                width: 250,
              ),
            ),
            ElevatedButton(
              // Within the `FirstScreen` Widget
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.white,
              ),
              child: Image.network(
                'https://logos-world.net/wp-content/uploads/2021/08/Android-wordmark-Logo-2017-2019.png',
                width: 250,
              ),
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


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center( // Center the Column
        child: Container(
          child: Column( // Use a Column to stack the widgets vertically
            children: [
              Image.network(
                'https://logos-world.net/wp-content/uploads/2021/08/Android-wordmark-Logo-2017-2019.png',
                width: 250,
              ),
              const Text(
                'Android là một hệ điều hành dựa trên nền tảng Linux được thiết kế dành cho các thiết bị di động có màn hình cảm ứng như điện thoại thông minh và máy tính bảng',
                style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify
              ),
              Expanded(
                child: Container(),
              ),
              ElevatedButton(
                // Within the SecondScreen Widget
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
              SizedBox(height: 16), // Add some spacing between the button and the image
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center( // Center the Column
        child: Container(
          child: Column( // Use a Column to stack the widgets vertically
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                width: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                  'Flutter là một SDK phát triển ứng dụng di động nguồn mở được tạo ra bởi Google. Nó được sử dụng để phát triển ứng ứng dụng cho Android và iOS, cũng là phương thức chính để tạo ứng dụng cho Google',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify
              ),
              Expanded(
                child: Container(),
              ),
              ElevatedButton(
                // Within the SecondScreen Widget
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
              SizedBox(height: 16), // Add some spacing between the button and the image
            ],
          ),
        ),
      ),
    );
  }
}

class FourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center( // Center the Column
        child: Container(
          child: Column( // Use a Column to stack the widgets vertically
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Dart_programming_language_logo.svg/2560px-Dart_programming_language_logo.svg.png',
                width: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                  'Dart là ngôn ngữ lập trình cho Flutter- bộ công cụ giao diện người dùng của Google để xây dựng các ứng dụng Mobile, Web và Desktop app',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify
              ),
              Expanded(
                child: Container(),
              ),
              ElevatedButton(
                // Within the SecondScreen Widget
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
              SizedBox(height: 16), // Add some spacing between the button and the image
            ],
          ),
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
