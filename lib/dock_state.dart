import 'package:flutter/material.dart';

import 'dock_model.dart';

class DockState extends ChangeNotifier {
  DockModel selectedPalette = DockModel(
      primaryColor: const Color(0xFF000428),
      secondaryColor: const Color(0xFF004e92),
      index: 0);

  DockModel? hoveredPalette;

  List<DockModel> availablePalette = [
    DockModel(
        primaryColor: const Color(0xFF000428),
        secondaryColor: const Color(0xFF004e92),
        index: 0),
    DockModel(
        primaryColor: const Color(0xFFff7e5f),
        secondaryColor: const Color(0xFFfeb47b),
        index: 1),
    DockModel(
        primaryColor: const Color(0xFFfc67fa),
        secondaryColor: const Color(0xFFf4c4f3),
        index: 2),
    DockModel(
        primaryColor: const Color(0xFFde6161),
        secondaryColor: const Color(0xFF2657eb),
        index: 3),
    DockModel(
        primaryColor: const Color(0xFF89253e),
        secondaryColor: const Color(0xFF3a6186),
        index: 4),
    DockModel(
        primaryColor: const Color(0xFF4ecdc4),
        secondaryColor: const Color(0xFF556270),
        index: 5),
    DockModel(
        primaryColor: const Color(0xFF8e9eab),
        secondaryColor: const Color(0xFFeef2f3),
        index: 6),
    DockModel(
        primaryColor: const Color(0xFFbe93c5),
        secondaryColor: const Color(0xFF7bc6cc),
        index: 7),
  ];

  void changeSelectedPalette(DockModel palette) {
    selectedPalette = palette;
    notifyListeners();
  }

  void changeHoveredPalette(DockModel? palette) {
    hoveredPalette = palette;
    notifyListeners();
  }
}
