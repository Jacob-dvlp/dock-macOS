import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dock_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/mac.png",
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 3, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 25,
                          height: 30,
                          child: Image.asset(
                            "assets/apple.png",
                            scale: 0.1,
                          )),
                      const SizedBox(
                        width: 09,
                      ),
                      const Text(
                        "Finder",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 09,
                      ),
                      const Text(
                        "File",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 09,
                      ),
                      const Text(
                        "Edição",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 09,
                      ),
                      const Text(
                        "Visualização",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 09,
                      ),
                      const Text(
                        "Ir",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 09,
                      ),
                      const Text(
                        "Janela",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 09,
                      ),
                      const Text(
                        "Ajuda",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 09,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/battery.png"),
                      const SizedBox(
                        width: 12,
                      ),
                      const Icon(Icons.wifi),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text("15:10")
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(20.0),
                height: 80.0,
                width: 620.0,
                decoration: BoxDecoration(
                  color: Colors.white38.withAlpha(20),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: OverflowBox(
                  minHeight: 80.0,
                  maxHeight: 160.0,
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      Consumer<DockState>(
                          builder: (context, DockState dockState, child) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: dockState.availablePalette
                                .map<Widget>((palette) {
                              return GestureDetector(
                                onTap: () {
                                  dockState.changeSelectedPalette(palette);
                                },
                                child: MouseRegion(
                                  onEnter: (value) {
                                    dockState.changeHoveredPalette(palette);
                                  },
                                  onExit: (value) {
                                    dockState.changeHoveredPalette(null);
                                  },
                                  child: SizedBox(
                                    height: 180.0,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 375),
                                          curve: Curves.ease,
                                          height: dockState.hoveredPalette ==
                                                  palette
                                              ? 100.0
                                              : dockState.hoveredPalette == null
                                                  ? 50.0
                                                  : (dockState.hoveredPalette!
                                                                  .index ==
                                                              palette.index -
                                                                  1 ||
                                                          dockState
                                                                  .hoveredPalette!
                                                                  .index ==
                                                              palette.index + 1)
                                                      ? 70.0
                                                      : 50.0,
                                          width: dockState.hoveredPalette ==
                                                  palette
                                              ? 100.0
                                              : dockState.hoveredPalette == null
                                                  ? 50.0
                                                  : (dockState.hoveredPalette!
                                                                  .index ==
                                                              palette.index -
                                                                  1 ||
                                                          dockState
                                                                  .hoveredPalette!
                                                                  .index ==
                                                              palette.index + 1)
                                                      ? 70.0
                                                      : 50.0,
                                          margin: EdgeInsets.symmetric(
                                              horizontal:
                                                  dockState.hoveredPalette ==
                                                          palette
                                                      ? 15.0
                                                      : 5.0,
                                              vertical: 5.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                palette.primaryColor,
                                                palette.secondaryColor,
                                              ],
                                            ),
                                            border: Border.all(
                                              color: Colors.white70,
                                              width: 3.0,
                                            ),
                                          ),
                                        ),
                                        AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 375),
                                          curve: Curves.ease,
                                          margin: EdgeInsets.only(
                                              top: dockState.hoveredPalette ==
                                                      palette
                                                  ? 40.0
                                                  : dockState.hoveredPalette ==
                                                          null
                                                      ? 5.0
                                                      : (dockState.hoveredPalette!
                                                                      .index ==
                                                                  palette.index -
                                                                      1 ||
                                                              dockState
                                                                      .hoveredPalette!
                                                                      .index ==
                                                                  palette.index +
                                                                      1)
                                                          ? 20.0
                                                          : 5.0),
                                          height: 5.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
