import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Handle edit profile
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _ProfileHeader(),
          const SizedBox(height: 24),
          _buildSection('Account Settings', [
            _SettingTile(
              icon: Icons.person_outline,
              title: 'Personal Information',
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.location_on_outlined,
              title: 'Shipping Addresses',
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.payment_outlined,
              title: 'Payment Methods',
              onTap: () {},
            ),
          ]),
          const SizedBox(height: 24),
          _buildSection('Orders', [
            _SettingTile(
              icon: Icons.shopping_bag_outlined,
              title: 'Order History',
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.local_shipping_outlined,
              title: 'Track Orders',
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.refresh,
              title: 'Returns & Refunds',
              onTap: () {},
            ),
          ]),
          const SizedBox(height: 24),
          _buildSection('Preferences', [
            _SettingTile(
              icon: Icons.notifications_outlined,
              title: 'Notifications',
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.language_outlined,
              title: 'Language',
              trailing: const Text('English'),
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.dark_mode_outlined,
              title: 'Dark Mode',
              trailing: Switch(
                value: false,
                onChanged: (value) {},
              ),
              onTap: () {},
            ),
          ]),
          const SizedBox(height: 24),
          _buildSection('Support', [
            _SettingTile(
              icon: Icons.help_outline,
              title: 'Help Center',
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.policy_outlined,
              title: 'Privacy Policy',
              onTap: () {},
            ),
            _SettingTile(
              icon: Icons.description_outlined,
              title: 'Terms of Service',
              onTap: () {},
            ),
          ]),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // Handle logout
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Log Out',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
        const SizedBox(height: 12),
        Card(
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.brown[50],
              child: const Icon(
                Icons.person,
                size: 60,
                color: Colors.brown,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.brown,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.camera_alt,
                size: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Kabutey Manasseh K.',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'kabuteymanasseh5@gmail.com',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

class _SettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback onTap;

  const _SettingTile({
    required this.icon,
    required this.title,
    this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.brown,
      ),
      title: Text(title),
      trailing: trailing ?? const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}