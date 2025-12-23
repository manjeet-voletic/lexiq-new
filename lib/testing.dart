import 'package:flutter/material.dart';
class Preferences extends StatelessWidget {
  const Preferences({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF1F7),
      body: Padding(
        padding:const EdgeInsets.only(top: 90, left:30, right: 30,),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 420),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              colors: [Colors.white, Color(0xFFF8F9FD)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 30,
                offset: const Offset(0, 20),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// ICON
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6A5AE0), Color(0xFF8F7CFF)],
                    ),
                  ),
                  child: const Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),

                const SizedBox(height: 20),

                /// TITLE
                const Text(
                  "Calendar Integration",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 6),

                /// SUBTITLE
                const Text(
                  "Automatically sync your listings with your personal calendar and avoid conflicts.",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.4,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 28),

                /// GOOGLE
                _authButton(
                  icon: Icons.g_mobiledata,
                  text: "Connect Google Calendar",
                  bg: const Color(0xFFFDECEC),
                  textColor: const Color(0xFFEA4335),
                ),

                const SizedBox(height: 14),

                /// MICROSOFT
                _authButton(
                  icon: Icons.window_rounded,
                  text: "Connect Microsoft Outlook",
                  bg: const Color(0xFFEAF1FB),
                  textColor: const Color(0xFF0A66C2),
                ),

                const SizedBox(height: 14),

                /// APPLE
                _authButton(
                  icon: Icons.apple,
                  text: "Connect Apple Calendar",
                  bg: Colors.black,
                  textColor: Colors.white,
                ),

                const SizedBox(height: 20),

                /// FOOTER
                const Text(
                  "You can disconnect anytime from settings.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _authButton({
    required IconData icon,
    required String text,
    required Color bg,
    required Color textColor,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon, size: 26, color: textColor),
        label: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: bg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}