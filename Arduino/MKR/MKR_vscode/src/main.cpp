#include <Arduino.h>
#include <MKRWAN.h>
LoRaModem modem;
String appEui ="70B3D57ED00375DA ";
String devAddr = "26001009";
String nwkSKey = "E1CC611A0AC8CE899A1F0BD0322E7512";
String appSKey = "25FAE76DC488D969477DAAA7A1A40097";
int connected;
int port = 1;
int err;
int number = 0;

void setup() {
  // put your setup code here, to run once:
 Serial.begin(9600);
  if (modem.begin(EU868)) {
    Serial.println("module started");
  };
  Serial.print("Your module version is: ");
  Serial.println(modem.version());
  Serial.print("Your device EUI is: ");
  Serial.println(modem.deviceEUI());
  connected = modem.joinABP(devAddr, nwkSKey, appSKey);
  modem.minPollInterval(120);//define min poll interval as 2 minutes
}

void loop() {
  devAddr.trim();
  nwkSKey.trim();
  appSKey.trim();      
  if (connected) {
    Serial.println("successful connection ");
  }
  else{
    Serial.println("Not connected");
  } 
  number = number +1;

  //start sending message 
  modem.setPort(port);
  modem.beginPacket();
  modem.print(String(number)); // convert message and sent
  //check for connection
  err = modem.endPacket(true);
  Serial.println(err);
}