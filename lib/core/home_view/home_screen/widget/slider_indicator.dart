import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    required ValueNotifier<int> currentSelectedIndex,
  }) : _currentSelectedIndex = currentSelectedIndex;

  final ValueNotifier<int> _currentSelectedIndex;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _currentSelectedIndex,
        builder: (context, updateValue, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 5; i++)
                Container(
                  margin: EdgeInsets.all(4),
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      color: i == _currentSelectedIndex.value
                          ? Color.fromRGBO(123, 129, 232, 1.0)
                          : null,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: i == _currentSelectedIndex.value
                              ? Color.fromRGBO(123, 129, 232, 1.0)
                              : Colors.grey)),
                )
            ],
          );
        });
  }
}
