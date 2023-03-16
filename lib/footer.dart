import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Company Name',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Address: XX Road, XX District, XX City',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Tel: 1234567890',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Contact Us'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
