import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Blibli Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4E7F5),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 740,
          child: Stack(
            children: [
              // Header image with Blibli logo
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Stack(
                  children: [
                    Image.network(
                      'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/test-discovery/2023/11/02/38942d92-652e-4b16-9eb7-113ca69e81f1-1698921296142-0b97418fb0548ee6e463e1c90ccb1536.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 40,
                      left: MediaQuery.of(context).size.width / 2 - 100,
                      child: Image.network(
                        'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/test-discovery/2023/08/09/ab858d80-6dae-4ada-bada-cb81e130ff84-1691548783277-327996318bac9f6f2b2c4359ce4629d6.png',
                        width: 200,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 350,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F3FA),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Email/Phone input field
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Nomor HP atau email',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey[300]!),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey[300]!),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFF0095DA),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Login button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0095DA),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // "Log in lebih cepat dengan" text
                      Text(
                        'Log in lebih cepat dengan',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),

                      const SizedBox(height: 16),

                      // Social login buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSocialButton(
                            icon: Icons.apple,
                            onPressed: () {},
                          ),
                          const SizedBox(width: 16),
                          _buildSocialButton(
                            icon: Icons.facebook,
                            onPressed: () {},
                            color: const Color(0xFF1877F2),
                          ),
                          const SizedBox(width: 16),
                          _buildSocialButton(
                            icon: Icons.g_mobiledata,
                            onPressed: () {},
                            isGoogle: true,
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // Register text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Belum punya akun? ',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Handle register
                            },
                            child: const Text(
                              'Daftar, yuk!',
                              style: TextStyle(
                                color: Color(0xFF0095DA),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Privacy policy text
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                          children: const [
                            TextSpan(text: 'Dengan log in, kamu menyetujui '),
                            TextSpan(
                              text: 'Kebijakan Privasi',
                              style: TextStyle(
                                color: Color(0xFF0095DA),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(text: ' dan '),
                            TextSpan(
                              text: 'Syarat & Ketentuan Blibli Tiket',
                              style: TextStyle(
                                color: Color(0xFF0095DA),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Blibli Tiket logo
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'blibli',
                                style: TextStyle(
                                  color: Color(0xFF0095DA),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '●',
                                style: TextStyle(
                                  color: Color(0xFFFDB913),
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: 'tiket',
                                style: TextStyle(
                                  color: Color(0xFF0095DA),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required VoidCallback onPressed,
    Color? color,
    bool isGoogle = false,
  }) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color ?? Colors.black87,
          size: isGoogle ? 40 : 28,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
