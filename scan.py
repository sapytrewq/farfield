import servocontrol
import detector
import time
import csvinterface
import twographs
import simpleplot

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
	writer = csvinterface.CSVWriter(list(range(0,190,10)), list(range(0,182,2)));
	for scan_num in range(num_scans):
		for base_angle in range(0,190,10):
			servocontrol.move_base(base_angle)
			for arm_angle in range(0,182,2):
				servocontrol.move_arm(arm_angle)
				writer.add_point(base_angle,arm_angle,detector.read_detector())
				#print(detector.read_detector())
			time.sleep(0.5)
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	means_filename, stdev_filename = writer.save_csv()
	twographs.plot_everything(means_filename, stdev_filename)

def two_axis_scan(num_scans):
	'''scans over x and y'''
	detector.reset_fsr()
	minimize_fsr()
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	writer = csvinterface.CSVWriter(([0,90]), list(range(0,182,2)));
	for scan_num in range(num_scans):
		for base_angle in [0,90]:
			servocontrol.move_base(base_angle)
			for arm_angle in range(0,182,2):
				servocontrol.move_arm(arm_angle)
				writer.add_point(base_angle,arm_angle,detector.read_detector())
				#print(detector.read_detector())
			time.sleep(0.5)
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	means_filename, stdev_filename = writer.save_csv()
	simpleplot.simple_plot(means_filename, stdev_filename)

				

def one_axis_scan(num_scans):
	'''scans over x'''
	#detector.reset_fsr()
	#minimize_fsr()
	detector.constant_gain()
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	writer = csvinterface.CSVWriter(([0]), list(range(0,182,2)));	
	for scan_num in range(num_scans):
		for arm_angle in range(0,182,2):
			servocontrol.move_arm(arm_angle)
			writer.add_point(0,arm_angle,detector.read_detector())
			#print(detector.read_detector())
		time.sleep(0.5)
	servocontrol.move_arm(0)
	servocontrol.move_base(0)
	means_filename, stdev_filename = writer.save_csv()
	simpleplot.one_axis_plot(means_filename, stdev_filename)


