import 'package:flutter/material.dart';
import 'package:cloud/MainArea.dart';
import 'package:cloud/footer.dart';

import 'header.dart';

class SaasHomePage extends StatelessWidget {
  const SaasHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey[300],
                    child: LeftArea(),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.grey[200],
                    child: MiddleArea(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    child: RightArea(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.grey[300],
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
