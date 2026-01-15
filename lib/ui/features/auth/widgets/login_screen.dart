import 'package:flowcase/ui/features/auth/view_models/login_view_model.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.viewModel});

  final LoginViewModel viewModel;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _username = TextEditingController();

  final TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(_onViewModelChanged);
  }

  @override
  void dispose() {
    widget.viewModel.removeListener(_onViewModelChanged);
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  void _onViewModelChanged() {
    // Se houver erro, mostramos um SnackBar
    if (widget.viewModel.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(widget.viewModel.error!),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 40.0,
              left: 24.0,
              right: 24.0,
              bottom: 40.0,
            ),
            child: Column(
              spacing: 80.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', width: 300.0),
                Column(
                  spacing: 16.0,
                  children: [
                    TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Digite seu username',
                      ),
                    ),
                    TextField(
                      controller: _password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Digite sua senha',
                      ),
                    ),
                    FilledButton(
                      onPressed: widget.viewModel.isLoading
                          ? null
                          : () async {
                              await widget.viewModel.login(
                                _username.text,
                                _password.text,
                              );

                              if (!context.mounted) return;

                              if (widget.viewModel.error == null) {
                                Navigator.pushReplacementNamed(context, '/');
                              }
                            },
                      style: FilledButton.styleFrom(
                        minimumSize: Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: widget.viewModel.isLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : const Text('Fazer Login'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
