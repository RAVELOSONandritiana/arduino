char status = 0;

void setup() {
  pinMode(13, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  while (Serial.available() > 0) {
    String c = Serial.readString();
    Serial.println(c);
    if (c.equals("on\n")) {
      status = 1;
    }
    else if (c.equals("off\n")) {
      status = 0;
    }
  }
  digitalWrite(13, status);
}
