import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviderBuilder<T extends BlocBase<Object?>> extends StatelessWidget {
  const BlocProviderBuilder({required this.create, required this.builder, Key? key}) : super(key: key);

  final T Function(BuildContext context) create;
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => create(context),
      child: Builder(builder: builder),
    );
  }
}