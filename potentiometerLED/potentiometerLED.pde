#define LED 3
#define KNOB 0

void setup() {
  pinMode(LED, OUTPUT);
}

void loop() {
  // Read the value of the potentiometer knob
  int knobValue = analogRead(KNOB);

  // Map the potentiometer value to 1-255
  int intensity = map(knobValue, 1, 1024, 1, 255);

  // Output the respective value to the LED
  analogWrite(LED, intensity);
}
