import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../auth/auth_service.dart';

class AboutPageOrg extends StatelessWidget {
  const AboutPageOrg({super.key});

  @override
  Widget build(BuildContext context) {
    void signOut() async {
      final authService = Provider.of<AuthService>(context, listen: false);
      await authService.signOut();
    }

    return SafeArea(
      child: Column(
        children: [
          IconButton(
              onPressed: () {
                signOut();
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
    );
  }
}
