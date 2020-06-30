import servocontrol
import detector
import time

servocontrol.move_arm(0)
servocontrol.move_base(0)

def minimize_fsr():
	voltages = []
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	for arm_angle in range(0,182,2):
		servocontrol.move_arm(arm_angle)
		voltages.append(detector.read_detector())
	time.sleep(0.5)
	servocontrol.move_arm(0)
	servocontrol.move_base(0)

	maxvoltage = max(voltages)
	
	detector.set_fsr(maxvoltage)


def full_scan(num_scans):
	''' scans over everything!'''
	detector.reset_fsr()
	minimize_fsr()
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	for scan_num in range(num_scans):
		for base_angle in range(0,190,10):
			servocontrol.move_base(base_angle)
			for arm_angle in range(0,182,2):
				servocontrol.move_arm(arm_angle)
				#print(detector.read_detector())
			time.sleep(0.5)
	servocontrol.move_arm(0)
	servocontrol.move_base(0)

def two_axis_scan(num_scans):
	'''scans over x and y'''
	detector.reset_fsr()
	minimize_fsr()
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	for scan_num in range(num_scans):
		for base_angle in [0,90]:
			servocontrol.move_base(base_angle)
			for arm_angle in range(0,182,2):
				servocontrol.move_arm(arm_angle)
				#print(detector.read_detector())
			time.sleep(0.5)
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
				

def one_axis_scan(num_scans):
	'''scans over x'''
	detector.reset_fsr()
	minimize_fsr()
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	for scan_num in range(num_scans):
		for arm_angle in range(0,182,2):
			servocontrol.move_arm(arm_angle)
			#print(detector.read_detector())
		time.sleep(0.5)
	servocontrol.move_arm(0)
	servocontrol.move_base(0)


