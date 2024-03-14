import 'package:chirpy_client/chirpy_client.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        child: Container(
          width: 260,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SignInWithEmailButton(
                caller: GetIt.I<Client>().modules.auth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
