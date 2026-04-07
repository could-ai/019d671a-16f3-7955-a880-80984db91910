import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cybersecurity Documentation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E6091)),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CoverPage(),
      },
    );
  }
}

class CoverPage extends StatelessWidget {
  const CoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header
                const Text(
                  'C.K. Pithawalla College of Commerce,\nManagement & Computer Application',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E6091),
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 24),
                const Divider(color: Color(0xFF1E6091), thickness: 2),
                const SizedBox(height: 32),
                
                // Picture added properly
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?q=80&w=1000&auto=format&fit=crop',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 250,
                      color: Colors.grey[200],
                      child: const Center(child: Icon(Icons.image_not_supported, size: 50, color: Colors.grey)),
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Title
                const Text(
                  'CYBERSECURITY DOCUMENTATION',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1E6091),
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Preparing Incident Response and Security Policies',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1E6091),
                  ),
                ),
                const SizedBox(height: 48),

                // Submitted By
                const Text(
                  'Submitted By',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Pal Vishal Vijay',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 40),

                // Details Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey[200]!),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Course:', 'Bachelor of Computer Applications (BCA)'),
                      _buildDetailRow('Subject:', 'AEC (Ability Enhancement Course)'),
                      _buildDetailRow(
                        'Academic Year:', 
                        '2025 – 2026', 
                        words: 'Two Thousand Twenty-Five to Two Thousand Twenty-Six'
                      ),
                      _buildDetailRow(
                        'Date:', 
                        'April 2026', 
                        words: 'April Two Thousand Twenty-Six'
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 60),
                const Divider(color: Color(0xFF1E6091), thickness: 2),
                const SizedBox(height: 16),
                
                // Footer
                Text(
                  'C.K. Pithawalla College | Pal Vishal Vijay | Page 1',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {String? words}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 18, color: Colors.black87, height: 1.5),
              children: [
                TextSpan(
                  text: '$label ',
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1E6091)),
                ),
                TextSpan(text: value),
              ],
            ),
          ),
          if (words != null)
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 16.0),
              child: Text(
                '($words)',
                style: TextStyle(
                  fontSize: 15, 
                  color: Colors.grey[700], 
                  fontStyle: FontStyle.italic
                ),
              ),
            ),
        ],
      ),
    );
  }
}
