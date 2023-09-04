import 'package:logincrud/pages/home_page.dart';
import 'package:logincrud/google//sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? name;
  String? email;
  String? imageUrl;
  User get user => _auth.currentUser!;
  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print(
            'No se encontró una cuenta para el correo electrónico proporcionado.');
      } else if (e.code == 'wrong-password') {
        print('Contraseña incorrecta.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1F5FE),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 100, 5, 50),
                child: Text(
                  'DESARROLLO MOVIL2',
                  style: TextStyle(fontSize: 20,color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 50),
            _signInFormButton(),
            SizedBox(height: 10),
            _signInGoogleButton(),
          ],
        ),
      ),
    );
  }

  Widget _signInFormButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: () {
          signInWithEmailAndPassword(
              _emailController.text, _passwordController.text);
        },
        child: Text(
          'Iniciar sesión',
          style: TextStyle(fontSize: 20),
        ));
  }

  Widget _signInGoogleButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: () {
          signInWithGoogle().then((result) {
            if (result != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            }
          });
        },
        child: Text(
          'Sign in with Google',
          style: TextStyle(fontSize: 20),
        ));
  }
}
