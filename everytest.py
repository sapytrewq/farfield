import RPi.GPIO as GPIO
import time
import scan
import choosenumber
import csvinterface
import twographs
import armpositioning 

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)


modeButton1 = 8
modeButton1_LED = 7
GPIO.setup(modeButton1,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(modeButton1_LED,GPIO.OUT)
GPIO.output(modeButton1_LED,GPIO.LOW)  

modeButton2 = 19
modeButton2_LED = 26
GPIO.setup(modeButton2,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(modeButton2_LED,GPIO.OUT)
GPIO.output(modeButton2_LED,GPIO.LOW) 

modeButton3 = 6
modeButton3_LED = 5
GPIO.setup(modeButton3,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.setup(modeButton3_LED,GPIO.OUT)
GPIO.output(modeButton3_LED,GPIO.LOW) 

while True:
	armpositioning.gainset()
	if not GPIO.input(modeButton1):
		time.sleep(0.5)
		print("button 1 pressed: selected full scan")
		GPIO.output(modeButton1_LED,GPIO.HIGH)
		scan.full_scan(choosenumber.menu())
		GPIO.output(modeButton1_LED,GPIO.LOW)

	if not GPIO.input(modeButton2):
		time.sleep(0.5)
		print("button 2 pressed: selected one axis scan")
		GPIO.output(modeButton2_LED,GPIO.HIGH)
		scan.one_axis_scan(choosenumber.menu())
		GPIO.output(modeButton2_LED,GPIO.LOW)

	if not GPIO.input(modeButton3):
		time.sleep(0.5)
		print("button 3 pressed: selected two axis scan")
		GPIO.output(modeButton3_LED,GPIO.HIGH)
		scan.two_axis_scan(choosenumber.menu())
		GPIO.output(modeButton3_LED,GPIO.LOW)


	





