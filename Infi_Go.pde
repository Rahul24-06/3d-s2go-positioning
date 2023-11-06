float angleX = 0.0;
float angleY = 0.0;
float angleZ = 0.0;

void setup() {
  size(400, 400, P3D);
  arduino = new Serial(this, "COM3", 9600);  // Replace "COM3"
}

void draw() {
  background(220);
  translate(width / 2, height / 2, -200); // Move the cube to the center

  // Rotate the cube
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);

  // Set the stroke and fill colors
  stroke(0);
  fill(150, 150, 250);

  // Define the size of the cube
  float s = 100;

  // Draw the cube
  box(s);
}

void serialEvent(Serial p) {
angleX = p.readFloat()
angleY = p.readFloat()
angleZ = p.readFloat()
}