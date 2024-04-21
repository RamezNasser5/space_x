import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:space_x/features/overview/ui/screens/overview.dart';
import 'package:space_x/features/splach/ui/widgets/spacex_row.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    navigatToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          const SpaceXRow(),
          Positioned(
            top: 220,
            right: 27,
            child: SvgPicture.asset(
              'images/Vector 3.svg',
              height: 500,
            ),
          ),
        ],
      ),
    );
  }

  void navigatToHome(context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const OverView();
      }));
    });
  }
}
