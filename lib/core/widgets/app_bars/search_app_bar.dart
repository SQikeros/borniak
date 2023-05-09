import 'package:auto_route/auto_route.dart';
import 'package:borniak/core/widgets/builders/bloc_provider_builder.dart';
import 'package:borniak/core/widgets/texts/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(String value) onChanged;
  final bool closeLeading;
  final String title;
  final String hint;

  const SearchAppBar({
    Key? key,
    required this.onChanged,
    this.closeLeading = false,
    required this.title,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProviderBuilder(
      create: (_) => _SearchAppBarCubit(),
      builder: (context) =>
          BlocBuilder<_SearchAppBarCubit, bool>(builder: (context, isExpanded) {
        return AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          leading: isExpanded
              ? IconButton(
                  onPressed: () {
                    context.read<_SearchAppBarCubit>().collapse();
                  },
                  icon: const Icon(Icons.close))
              : IconButton(
                  onPressed: () {
                    context.popRoute();
                  },
                  icon: const Icon(Icons.arrow_back)),
          title: isExpanded
              ? TextField(
                  style: Theme.of(context).textTheme.titleLarge,
                  autofocus: true,
                  onChanged: (query) {
                    onChanged(query);
                  },
                  decoration: InputDecoration(
                      fillColor: Theme.of(context).colorScheme.background,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.only(right: 16),
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.outline),
                      hintText: hint),
                )
              : Row(
                  children: [
                    Expanded(child: TitleLarge(title)),
                    IconButton(
                        onPressed: () =>
                            context.read<_SearchAppBarCubit>().expand(),
                        icon: const Icon(Icons.search))
                  ],
                ),
        );
      }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SearchAppBarCubit extends Cubit<bool> {
  _SearchAppBarCubit() : super(false);

  void expand() {
    emit(true);
  }

  void collapse() {
    emit(false);
  }
}
