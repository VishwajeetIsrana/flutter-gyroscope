// import 'package:flutter/material.dart';
// import 'package:sensors_plus/sensors_plus.dart';

// class GyroscopeImageScreen extends StatefulWidget {
//   @override
//   _GyroscopeImageScreenState createState() => _GyroscopeImageScreenState();
// }

// class _GyroscopeImageScreenState extends State<GyroscopeImageScreen>
//     with SingleTickerProviderStateMixin {
//   double _dx = 0;
//   double _dy = 0;

//   late AnimationController _controller;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Initialize gyroscope listener
//     gyroscopeEvents.listen((GyroscopeEvent event) {
//       setState(() {
//         _dx = event.y * 20; // Adjust sensitivity for X-axis
//         _dy = event.x * 20; // Adjust sensitivity for Y-axis
//       });
//     });

//     // Initialize animation controller for zoom effect
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 4),
//     )..repeat(reverse: true); // Repeat animation

//     // Define scale animation (slight zoom in and out)
//     _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose(); // Dispose of animation controller
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         child: Stack(
//           children: [
//             Positioned(
//               left: -_dx, // Reverse for a more natural parallax effect
//               top: -_dy,
//               child: ScaleTransition(
//                 scale: _scaleAnimation, // Add zoom animation
//                 child: AnimatedOpacity(
//                   opacity: 1.0, // You can make this dynamic if needed
//                   duration: Duration(seconds: 2), // Fade-in duration
//                   child: Image.network(
//                     'https://wallpapercave.com/wp/wp4819137.jpg',
//                     width: MediaQuery.of(context).size.width * 1.2,
//                     height: MediaQuery.of(context).size.height * 1.2,
//                     fit: BoxFit.cover, // Ensures the image fills the screen
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class GyroscopeImageSlider extends StatefulWidget {
  @override
  _GyroscopeImageSliderState createState() => _GyroscopeImageSliderState();
}

class _GyroscopeImageSliderState extends State<GyroscopeImageSlider> {
  double _dx = 0;
  double _dy = 0;

  final List<String> animalImages = [
    'https://wallpapercave.com/wp/wp4819137.jpg', // Example images
    'https://images.unsplash.com/photo-1476922027627-aa7293e3aaa8?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://cdn.pixabay.com/photo/2024/11/11/14/05/flamingo-9190160_1280.jpg',
    'https://wallpapercave.com/wp/wp2301786.jpg',
    'https://wallpapercave.com/wp/wp1835481.jpg',
  ];

  @override
  void initState() {
    super.initState();
    gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        _dx = event.y * 15; // Sensitivity for horizontal movement
        _dy = event.x * 15; // Sensitivity for vertical movement
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: PageView.builder(
          itemCount: animalImages.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Positioned(
                  left: -_dx, // Reverse for parallax effect
                  top: -_dy,
                  child: Image.network(
                    animalImages[index],
                    width: MediaQuery.of(context).size.width * 1.2,
                    height: MediaQuery.of(context).size.height * 1.2,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: Text(
                    'Wild Animal ${index + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
