int i=0;
int tab[5];
void setup() {
  Serial.begin(9600);
}

void loop() {
  int value = analogRead(A0);
  tab[i++] = value;
  if(i == 5)
  {
    int min = tab[0];
    int max = tab[0];
    int moyenne = 0;
    for(int j = 0;j < 5;j++)
    {
      min = tab[j] < min ? tab[j]:min;
      max = tab[j] > max ? tab[j]:max;
      moyenne += tab[j];
    }
    moyenne/=5;
    Serial.println(min);
    Serial.println(moyenne);
    Serial.println(max);
    i = 0;
  }
  delay(100);
}
