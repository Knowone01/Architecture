import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Controller/riverpod_controller.dart';
class homepage extends ConsumerWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        color: Colors.black,
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            child: Text('Activty : ${ref.watch(textprovider)}'),
          ),
        ),
      ),
    );
  }
}
