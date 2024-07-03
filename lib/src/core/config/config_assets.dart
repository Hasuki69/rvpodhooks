class ImagePath {
  static const String logo = 'assets/images/logo.png';
}

class AnimationPath {
  static const String logo = 'assets/animations/logo.json'; // Lottie file (JSON)
  static const String logoLottie = 'assets/animations/logo.lottie'; // Lottie file
}

class SvgPath {
  // Generated using vector_graphics_compiler
  // Run this command in the terminal to generate the file:
  // dart run vector_graphics_compiler --input-dir assets/svgs/ --out-dir assets/svg/
  static const String logo = 'assets/vector/logo.svg.vec';
}
