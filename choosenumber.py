import joystick
import time

def menu():

	print("Choose number of scans with joystick. Press and hold joystick button to confirm. Default = 1")

	x,y,button = joystick.get_joystick()
	num_scans = 1

	while button:
		x,y,button = joystick.get_joystick()
		if y > 700:
			num_scans += 1
			print("   selected",num_scans,"scans")
		elif y < 200:
			if num_scans > 1: num_scans -= 1
			print("   selected",num_scans,"scans")
		time.sleep(0.25)

	print("Scanning with",num_scans,"scans")
	return num_scans
	
