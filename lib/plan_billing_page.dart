import 'package:flutter/material.dart';

class PlanBillingPage extends StatefulWidget {
  const PlanBillingPage({super.key});

  @override
  State<PlanBillingPage> createState() => _PlanBillingPageState();
}

class _PlanBillingPageState extends State<PlanBillingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Plan & Billing",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
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
                  // Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Current Plan",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "Expiring Soon",
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 5),

                  // Plan name + date
                  const Row(
                    children: [
                      Text(
                        "Starter",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_right_alt, size: 20, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        "10/05/2025 To 15/05/2025",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),

                  const SizedBox(height: 22),

                  // Expiry Warning Box
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your subscription will expire in "
                              "4 days",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 14),

                        // Renew Button
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Text("🚀"),
                          label: const Text(
                            "Renew Now",
                            style: TextStyle(fontSize: 16,color: Color(0xFFFFFFFF)),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Payment History Title
                  const Text(
                    "Payment History",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Payment
                  paymentItem(
                    date: "Sep 02, 2025 12:06 pm",
                    start: "Sep 02, 2025",
                    end: "Sep 15, 2025",
                    plan: "LexIq Trial Plan",
                    price: "₹0",
                  ),

                  const SizedBox(height: 25),

                  // 🔹 Payment Item 2
                  paymentItem(
                    date: "Aug 10, 2025 03:20 pm",
                    start: "Aug 10, 2025",
                    end: "Aug 24, 2025",
                    plan: "Advance Monthly",
                    price: "₹999",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  // Payment history 
  Widget paymentItem({
    required String date,
    required String start,
    required String end,
    required String plan,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      width: 600,
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "Start: $start • End: $end",
            style: const TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 8),
          Text(
            plan,
            style: const TextStyle(
              color: Color(0xFFFFF3949AB),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            price,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
