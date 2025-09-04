import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              if (GoRouter.of(context).canPop()) {
                GoRouter.of(context).pop();
              } else {
                // we gonna put flush bar here
              }
            },
            child: CircleAvatar(
              radius: 25,
              backgroundColor: cs.tertiary,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: cs.onSurface,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
