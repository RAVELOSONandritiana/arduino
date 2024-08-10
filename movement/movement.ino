#define MOVE 10
#define RED 4
#define trigPin 3
#define echoPin 2
long duration , distance;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(MOVE,INPUT);
  pinMode(RED,OUTPUT);
  pinMode(trigPin,OUTPUT);
  pinMode(echoPin,INPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin,LOW);
  duration = pulseIn(echoPin,HIGH);
  distance = duration / 58.2;
  if(digitalRead(MOVE) == 1 || distance < 200)
  {
      digitalWrite(RED,1);
  }
  else{
    digitalWrite(RED,0);
  }
  Serial.println(distance);
//  delay(50);
}
