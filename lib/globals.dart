library miam_miam.globals;

const double modelWidth = 414;
const double modelHeight = 978;

double screenWidth = 0.0;
double screenHeight = 0.0;

double getWidth(double width) => (width * screenWidth / modelWidth);
double getHeight(double height) => height * screenHeight / modelHeight;
