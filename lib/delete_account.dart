import 'dart:io';
import 'package:flutter/material.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Delete Account",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 35,
          left: 16,
          right: 16,
          bottom: 40,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.report, color: Colors.red),
                      SizedBox(width: 8),
                      Text(
                        "Delete Account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Deleting your account will:",
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 20),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Icon(Icons.radio_button_checked, size: 18),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Remove all saved matters, alerts, and calendar sync",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

      const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Icon(Icons.radio_button_checked, size: 18),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Stop all notifications and updates",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                    const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Icon(Icons.radio_button_checked, size: 18),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Delete personal data we are not legally required to keep (such as invoices)",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF4F4),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.red,
                        width: 1.5,
                      ),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.orange,
                          size: 26,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Your account will be scheduled for permanent deletion in 30 days. "
                                "Until then, you can restore your account by signing in. "
                                "After that date, your account and data will be permanently removed.",
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.4,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 23,),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 26,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Schedule Deletion",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
