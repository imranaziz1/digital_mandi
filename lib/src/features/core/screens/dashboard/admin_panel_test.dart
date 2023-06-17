import 'package:flutter/material.dart';

class AdminPanelDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Dashboard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            _buildUploadSection(
              title: 'Upload Place',
              onTap: () {
                // Handle upload place functionality
              },
            ),
            _buildUploadSection(
              title: 'Upload Banner',
              onTap: () {
                // Handle upload banner functionality
              },
            ),
            // Add more upload sections for different content types
          ],
        ),
      ),
    );
  }

  Widget _buildUploadSection({required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.cloud_upload,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

// Example usage:
void main() {
  runApp(
    MaterialApp(
      home: AdminPanelDashboard(),
    ),
  );
}
