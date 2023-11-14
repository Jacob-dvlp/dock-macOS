import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dock_model.dart';
import 'dock_state.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DockState(),
      builder: (context, child) => ChangeNotifierProvider(
          create: (context) => PaletteState(),
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Theme App',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: context.watch<DockState>().selectedPalette.primaryColor,
                  primary: context.watch<DockState>().selectedPalette.primaryColor,
                  secondary: context.watch<DockState>().selectedPalette.secondaryColor,
                ),
                useMaterial3: true,
              ),
              home: const HomePage(),
            );
          }),
    );
  }
}
