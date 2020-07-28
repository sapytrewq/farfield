import detector
import joystick
import time
import detector 
import servocontrol

def gainset():

	print("Position arm and base to find max voltage and set gain accordingly")

	x,y,button = joystick.get_joystick()


	if y > 700:
		if angley < 180 angley += 1
		servocontorl.move_base(angley)
		print(detector.read_detector())
	elif y < 200:
		if angley > 0 angley -= 1
		servocontorl.move_base(angley)
		print(detector.read_detector())
	if x > 700
		if anglex < 180 anglex += 1
		servocontorl.move_arm(anglex)
		print(detector.read_detector())
	elif x < 200 
		if anglex > 0 anglex -= 1
		servocontorl.move_arm(anglex)
		print(detector.read_detector())
	

	
	#print("")
