import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final emailText = TextEditingController();
  final passwordText = TextEditingController();
  final confirmText = TextEditingController();

  bool loading = false;
  String? message;
  bool obscure = true;

  @override
  void dispose() {
    emailText.dispose();
    passwordText.dispose();
    confirmText.dispose();
    super.dispose();
  }

  Future<void> _signUp() async {
    final email = emailText.text.trim();
    final password = passwordText.text;
    final confirm = confirmText.text;

    if (email.isEmpty || password.isEmpty || confirm.isEmpty) {
      setState(() => message = 'Preencha e-mail, senha e confirmação.');
      return;
    }

    if (password.length < 6) {
      setState(() => message = 'A senha deve ter pelo menos 6 caracteres.');
      return;
    }

    if (password != confirm) {
      setState(() => message = 'As senhas não coincidem.');
      return;
    }

    setState(() {
      loading = true;
      message = null;
    });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await FirebaseAuth.instance.currentUser?.sendEmailVerification();

      if (!mounted) return;
      Navigator.pop(context);
    } on FirebaseAuthException catch (exception) {
      setState(() => message = 'Falha ao criar conta: ${exception.code}');
    } finally {
      if (mounted) setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar conta'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: emailText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'E-mail'),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: passwordText,
                  obscureText: obscure,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() => obscure = !obscure);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: confirmText,
                  obscureText: obscure,
                  decoration: const InputDecoration(
                    labelText: 'Confirmar senha',
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: loading ? null : _signUp,
                    child: const Text('Criar conta'),
                  ),
                ),
                if (loading)
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: CircularProgressIndicator(),
                  ),
                if (message != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      message!,
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}