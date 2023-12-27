import 'package:flutter/material.dart';

const double paddingSize = 24;
const double infoSectionRadius = 40;

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  Widget _pad(Widget child) => Padding(
        padding: const EdgeInsets.fromLTRB(paddingSize, 0, paddingSize, 0),
        child: child,
      );

  SizedBox _space(double h) => SizedBox(height: h);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _space(paddingSize),
                _pad(const New_Scroll()),
                _space(12),
              ],
            ),
          ),
      ],
    );
  }
}

class New_Scroll extends StatelessWidget {
  const New_Scroll();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(left: 30),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.network('https://i.blogs.es/3e839c/star-wars/1366_2000.jpg'),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
