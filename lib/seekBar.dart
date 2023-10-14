import 'package:flutter/material.dart';


class SeekBarCreation extends StatelessWidget {
  const SeekBarCreation({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SliderTheme(data: SliderTheme.of(context).copyWith(
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(
              disabledThumbRadius: 4,
              enabledThumbRadius: 10
            ),
            overlayShape: const RoundSliderOverlayShape(
              overlayRadius: 10,
            ),
            activeTrackColor: Colors.white.withOpacity(0.2),
            inactiveTrackColor: Colors.white,
            thumbColor: const Color(0xFFff80aa),
            overlayColor: Colors.white
          ),
              child: Slider(value: 0, onChanged: (value){})),
        )
      ],
    ); 
  }
}
