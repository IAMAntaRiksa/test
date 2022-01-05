import 'package:flutter/material.dart';

class WidgetState {
  static Widget loading(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  static Widget erroLoading(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: const Text('Refresh'))
      ],
    );
  }
}
