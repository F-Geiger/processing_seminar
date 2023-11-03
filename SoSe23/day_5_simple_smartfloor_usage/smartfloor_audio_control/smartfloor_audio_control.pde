/**
 * Um dieses Beispiel auszuführen, müsst Ihr die Sound Library installieren.
 * Dazu geht Ihr unter "Sketch" > "Library importieren" > "Library hinzufügen"
 * Dann gebt ihr bei Filter "Sound" ein und installiert die Library "Sound" von der "Processing Foundation"
 *
 * Die Dokumentation für die Library: https://processing.org/reference/libraries/sound/index.html
*/

import finngeiger.smartfloor.*;

import processing.sound.*; // Hier wird "Sound" importiert

Smartfloor smartfloor;

float floorMidX;
float floorMidY;

float backgroundColor;

SinOsc sine; // Variable für einen Sinus-Ton

void setup() {
  size(600, 600);
  
  smartfloor = new Smartfloor(this);
  floorMidX = 0;
  floorMidY = 0;
  
  smartfloor.start();
  
  sine = new SinOsc(this); // Initialisieren vom Sinus-Ton
  sine.play(); // Sinus-Ton abspielen. Mit sine.stop() kann er gestoppt werden.
}

void draw() {
  setFloorMidPosition(); 
  
  // Hier wird floorMidX von 0 bis zur Fenstergröße auf die einen Wert zwischen 80 und 1000 gemappt.
  float freq = map(floorMidX, 0, width, 80.0, 1000.0);
  // Frequenz des Sinus-Tons kontrollieren
  sine.freq(freq);
  
  // Code von Euch
}

void tilePressed(int x, int y) {
  float screenX = floorXToScreenX(x);
  float screenY = floorYToScreenY(y);
  
  println("pressed -> x: " + screenX + ", y: " + screenY);

  // Code von Euch
}

void tileReleased(int x, int y) {
  float screenX = floorXToScreenX(x);
  float screenY = floorYToScreenY(y);
  
  println("released -> x: " + screenX + ", y: " + screenY);

  // Code von Euch
}
