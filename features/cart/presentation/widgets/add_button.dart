import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class AddButton extends StatelessWidget {
  final String item;
  const AddButton({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    final isInCart = context.select<CartProvider, bool>(
      (cart) => cart.items.any((e) => e.name == item),
    );

    return TextButton(
      onPressed: isInCart ? null : () => context.read<CartProvider>().add(item),
      child: isInCart
          ? const Icon(Icons.check, color: Colors.green)
          : const Text('TAMBAH'),
    );
  }
}
