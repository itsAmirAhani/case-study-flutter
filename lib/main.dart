import 'package:flutter/material.dart';
import 'models/product.dart';
import 'screens/home_screen.dart';
import 'screens/product_detail_screen.dart';

void main() => runApp(const CaseStudyApp());

class CaseStudyApp extends StatelessWidget {
  const CaseStudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Case Study',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == ProductDetailScreen.routeName) {
          final p = settings.arguments as Product;
          return MaterialPageRoute(
            builder: (_) => ProductDetailScreen(product: p),
          );
        }
        return null;
      },
    );
  }
}
