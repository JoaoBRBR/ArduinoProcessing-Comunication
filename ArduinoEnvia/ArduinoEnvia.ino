void setup() {
  Serial.begin(9600);
  Serial.println("0,0");
}

void loop() {
  if (Serial.available()>0){
    char input = Serial.read();
    //read potentiometers
    int pot0Val = analogRead(A0);
    Serial.print(pot0Val);
    Serial.print(',');
    delay(1);
    int potVal = analogRead(A1);
    Serial.println(potVal);
    }
}
