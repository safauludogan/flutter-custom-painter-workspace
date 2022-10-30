import 'package:flutter/material.dart';

import '../viewmodel/page_viewmodel.dart';

import 'package:flutter/material.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);
  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends PageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Center(child: Text('Header')),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
              child: SizedBox(
                  key: UniqueKey(),
                  child: pageViewModelList[currentIndex].child),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                currentIndex++;
                if (currentIndex > pageViewModelList.length - 1) {
                  currentIndex = 0;
                }

                setState(() {});
              },
              child: const Text('Devam et')),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
