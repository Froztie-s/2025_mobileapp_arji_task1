import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          // Header with back button and logo
          Container(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'blibli●tiket',
                      style: TextStyle(
                        color: Color(0xFF0095DA),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 48), // Balance the back button
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Profile card
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                // Profile icon
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2FD),
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/test-discovery/2023/08/09/ab858d80-6dae-4ada-bada-cb81e130ff84-1691548783277-327996318bac9f6f2b2c4359ce4629d6.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0095DA),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Tidak punya akun?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          color: Color(0xFF0095DA),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Menu items
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.help_outline, color: Colors.grey),
                  title: const Text('Bantuan BlibliCare'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.shopping_bag_outlined, color: Colors.grey),
                  title: const Text('Jual di Blibli'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
              ],
            ),
          ),

          const Spacer(),

          // Footer
          Container(
            padding: const EdgeInsets.all(24),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.shopping_bag, color: Colors.grey, size: 20),
                    const SizedBox(width: 8),
                    const Text(
                      'Tentang Blibli',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'All Rights Reserved',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          // Bottom navigation bar
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 4,
            selectedItemColor: const Color(0xFF0095DA),
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events_outlined),
                label: 'Blibli Bonus',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    Icon(Icons.shopping_bag_outlined),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.red,
                        child: Text(
                          '0',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_outlined),
                label: 'Daftar pesanan',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Akun',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
