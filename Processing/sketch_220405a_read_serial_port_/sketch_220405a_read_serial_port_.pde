import processing.serial.*;
Serial myPort;

float brightness = 0;

void setup()
{
  size(500,500);
  myPort = new Serial(this, "/dev/cu.usbmodem2101", 9600);
  myPort.bufferUntil('\n');
}

void draw()
{
  background(brightness,0,brightness);
}

void serialEvent (Serial myPort)
{
  brightness = float(myPort.readStringUntil('\n'));
}
