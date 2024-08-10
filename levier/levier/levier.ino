#define MIN 5
#define MAX 7
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for(int i = MIN;i <= MAX;i++)
  {
    pinMode(i,OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available() > 0)
  {
    String deg = Serial.readString();
    Serial.println(deg);
    for(int i = MIN;i <= MAX;i++)
    {
      digitalWrite(i,0);
    }
    for(int i = MIN;i < MIN+deg.toInt();i++)
    {
      digitalWrite(i,1);
    }
  }
}
