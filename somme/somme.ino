String a = "";
String b = "";
String signe = "";

void setup() {
  pinMode(13,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if(Serial.available() > 0)
  {
      if(a.length() == 0){
        Serial.print("a : ");
        a = Serial.readString();
        a.replace("\n","");
        Serial.println(a);
      }
      else if(a.length() > 0 && signe.length() == 0){
        Serial.print("signe : ");
        signe = Serial.readString();
        signe.replace("\n","");
        Serial.println(signe);
      }
      else if(signe.length() > 0)
      {
        Serial.print("b : ");
         b = Serial.readString();
         b.replace("\n","");
         Serial.println(b);
         Serial.print("result : ");
      }
      
      if(b.length() > 0){
        if(signe.equals("+") > 0){
          Serial.println(a.toFloat() + b.toFloat());
        }
        else if(signe.equals("-") > 0){
          Serial.println(a.toFloat() - b.toFloat());
        }
        else if(signe.equals("*") > 0){
          Serial.println(a.toFloat() * b.toFloat());
        }
        else if(signe.equals("/") > 0){
          Serial.println(a.toFloat() / b.toFloat());
        }
        a = "";
        b = "";
        signe = "";
      }
  }
}
