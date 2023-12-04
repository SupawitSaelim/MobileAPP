import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false, // Add this line to remove the debug banner
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supawit First App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://scontent.fbkk5-6.fna.fbcdn.net/v/t39.30808-6/403903891_3851898085096911_867901313811158933_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHF81FHX0kCepDzfKhqeAK2KIeg4TrCNFUoh6DhOsI0VWNPBSxmk1JYwyaJHuM35Huaq50sn6yJ6MD7YJ0ICnGD&_nc_ohc=SUypPD9NmYgAX9V8xId&_nc_ht=scontent.fbkk5-6.fna&oh=00_AfAH-SQt4NdXMKgyY1rQ3m2JRtSGIL6PVVCZXueY2ZY4Lg&oe=656E6592', // Replace with your actual image URL
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Testing for the first app',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
