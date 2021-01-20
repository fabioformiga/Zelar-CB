#include <Arduino.h>
#include <MKRWAN.h>
LoRaModem modem;
String appEui ="70B3D57ED003189E ";
String devAddr = "26011976";
String nwkSKey = "A5E0FA71028EBAF6B95288B9EDF60B6F";
String appSKey = "4CB484BC3CEA83622AFAFF7721BC2454";
int connected;
int port = 1;
int err;
String number;

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
  number = "01";

  //start sending message 
  modem.setPort(port);
  modem.beginPacket();
  modem.print(String(number)); // convert message and sent
  //check for connection
  err = modem.endPacket(true);
  Serial.println(err);
}