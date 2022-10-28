import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Hyper Mart',
        theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: child,
      ),
      child: const HomePage(),
    );
  }
}
