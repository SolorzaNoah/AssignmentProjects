import RPi.GPIO as GPIO
import time
import os 

GPIO.setmode(GPIO.BCM)

GPIO.setup(4, GPIO.IN) #PIR


#try:
 #   time.sleep(2) # to stabilize sensor
 #   while True:
print "Motion Detected"
if GPIO.input(4) == 0:
     os.system("processing-java --sketch=/home/pi/Desktop/pirsensor --run")
time.sleep(5) #to avoid multiple detection
time.sleep(0.1) #loop delay, should be less than detection delay

#except:
#    GPIO.cleanup()
