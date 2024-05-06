import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpods/Riverpod/API/riverpod_repo.dart';


final textprovider = StateProvider<String>((ref) => '');
class logic extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(riverpodmodelProvider);


    return controller.when(
      data: (value) {
        ref.read(textprovider.notifier).state = value.activity;
        return Center();
      },
      error: (error, stackTrace) => const Center(child: Text('Oops, something unexpected happened')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );



  }
}