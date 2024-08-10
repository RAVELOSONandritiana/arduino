#define trigPin 10
#define echoPin 9  
int distance;
int duration;
void setup() {
  Serial.begin(9600);
  pinMode(trigPin,OUTPUT);
  pinMode(echoPin,INPUT);
}

void loop() {
  digitalWrite(trigPin,LOW);
  delayMicroseconds(10);
  digitalWrite(trigPin,HIGH);
  delayMicroseconds(10);
  duration = pulseIn(echoPin,HIGH);
  distance = duration * 0.034 / 2;
  Serial.println(distance);
}
