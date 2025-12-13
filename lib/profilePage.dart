import 'package:flutter/material.dart';
import 'package:learn_dart/plan_billing_page.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  void navigateToplan(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>PlanBillingPage()));
  }
  bool showPasswordSection = false;
  bool showCurrent = false;
  bool showNew = false;
  bool showConfirm = false;

  final TextEditingController whatsappController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 35,left: 16,right: 16,bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  NEW PROFILE OVERVIEW CARD
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/images/user.png',
                    width: 100,
                    height: 100,
                  ),

                ],
                  ),
                  const SizedBox(height: 10,),
                  const Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.green,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Edit",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),


                  const SizedBox(height: 22),

                  profileItem("Name", "Manjeet Shrivastav", Icons.badge),
                  profileItem("Email", "manjeetvoletic@gmail.com", Icons.email),
                  profileItem("Workspace Cases", "8 / 750", Icons.workspaces),
                  profileItem("Storage Used", "0.0 MB / 1024 MB", Icons.sd_storage),
                  profileItem("Subscription Expiry", "Sep 15, 2025", Icons.calendar_month),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // WHATSAPP
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.phone, color: Colors.green),
                  SizedBox(width: 10),
                  Text(
                    "WhatsApp Number",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),

              const SizedBox(height: 14),

              TextField(
                controller: whatsappController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter WhatsApp Number",
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              //
              SizedBox(
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    print("Saved");
                    navigateToplan(); // call navigation on tap
                  },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

              ),
            ],
          ),
        ),

        const SizedBox(height: 25),

            // Password Section
      Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.lock, color: Colors.orange),
                const SizedBox(width: 10),
                const Text(
                  "Change Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    showPasswordSection ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    size: 28,
                  ),
                  onPressed: () {
                    setState(() {
                      showPasswordSection = !showPasswordSection;
                    });
                  },
                )
              ],
            ),

            if (showPasswordSection) ...[
              const SizedBox(height: 16),
              passwordField("Current Password", showCurrent, (val) {
                setState(() => showCurrent = !showCurrent);
              }),
              const SizedBox(height: 12),
              passwordField("New Password", showNew, (val) {
                setState(() => showNew = !showNew);
              }),
              const SizedBox(height: 12),
              passwordField("Confirm Password", showConfirm, (val) {
                setState(() => showConfirm = !showConfirm);
              }),

              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  print("Change Password Pressed");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Update Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ],
        ),
      ),
      ],
        ),
      ),
    );
  }
  //  Profile Item
  Widget profileItem(String title, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  //  Password Field
  Widget passwordField(String label, bool isVisible, Function(bool) toggle) {
    return TextField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: IconButton(
          icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
          onPressed: () => toggle(!isVisible),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
