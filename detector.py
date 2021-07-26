import board
import busio
import time
import adafruit_ads1x15.ads1015 as ADS
from adafruit_ads1x15.analog_in import AnalogIn

detector_pin = ADS.P1

i2c = busio.I2C(board.SCL, board.SDA)
ads = ADS.ADS1015(i2c)
chan = AnalogIn(ads, detector_pin)

def reset_fsr():
	ads.gain = 2/3

def constant_gain():
	ads.gain = 2
	print ("Gain set to 2")
	
def set_fsr(max_voltage):
	'''sets full scale range on adc'''
	if max_voltage < 0.256: ads.gain = 16
	elif max_voltage < 0.512: ads.gain = 8
	elif max_voltage < 1.024: ads.gain = 4
	elif max_voltage < 2.048: ads.gain = 2
	elif max_voltage < 4.096: ads.gain = 1
	else: ads.gain = 2/3
	print("Observed max voltage of",max_voltage, "Setting gain to",ads.gain)


def read_detector():
	'''returns detector voltage average'''
	# average 10 samples, delay 0.001 seconds in between (time.sleep(<num seconds>))
	import statistics


	voltages = []
	for i in range(10):
		voltages.append(chan.voltage)
		time.sleep(0.001)
	return statistics.mean(voltages)

