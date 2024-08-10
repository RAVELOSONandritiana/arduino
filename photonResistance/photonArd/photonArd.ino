#define ANALOG A1
void setup() {
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int lumiere = analogRead(ANALOG);
  lumiere = abs(lumiere-1023);
  Serial.println(lumiere);
  delay(20);
}
