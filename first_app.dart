import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July'
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'MyAwesome App';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              onTap: () {
                // Navigasi + kirim data ke halaman detail
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyDetails(items[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class MyDetails extends StatelessWidget {
  final String month;
  MyDetails(this.month);

  @override
  Widget build(BuildContext context) {
    final title = 'Details Page';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'You selected $month',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
