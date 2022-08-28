import processing.serial.*;

Serial myport;
float x, y;

void setup(){
  size(800,600);
  myport = new Serial(this, "COM3", 9600);
  myport.bufferUntil('\n');
}

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,20,20);
}


void serialEvent(Serial myport) {
  String portData = myport.readString();
  String[] stringData = split(portData, ',');
  float[] values = float(stringData);
  x = map(values[0], 0, 1023, 0, width);
  y = map(values[1], 0, 1023, 0, height);
  myport.write('s');
}
