import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/routes/app_router.dart';
import 'features/cart/data/repositories/cart_repository_impl.dart';
import 'features/cart/presentation/providers/cart_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) {
        final repository = CartRepositoryImpl();
        return CartProvider(repository);
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.catalog,
      routes: AppRouter.routes,
    );
  }
}
