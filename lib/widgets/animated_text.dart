import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Prajwal Bhattarai',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  speed: Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 4,
              stopPauseOnTap: true,
              displayFullTextOnTap: true,
              pause: Duration(milliseconds: 300),
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Hello'),
                RotateAnimatedText('beautiful'),
                RotateAnimatedText('world'),
              ],
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'hello',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),

            TextLiquidFill(text: 'Hello',),
          ],
        ),
      ),
    );
  }
}
