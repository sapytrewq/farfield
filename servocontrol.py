import pi_servo_hat
import time

arm_range = [0, 230] # min, max
base_range = [-5, 230] # min, max

arm_channel = 0
base_channel = 1

prev_arm_angle = 0
prev_base_angle = 0

# setting up library
servo_controller = pi_servo_hat.PiServoHat()
servo_controller.restart()

def linear_scale(rangelist, inputangle):
	'''returns corrected angle'''
	scale = (rangelist[1] - rangelist[0])/180
	yoffset = rangelist[0]
	outputangle = inputangle * scale + yoffset
	return outputangle

def move_arm(angle):
	global prev_arm_angle
	servo_controller.move_servo_position(0, linear_scale(arm_range, angle), 180)
	time.sleep(1.5/180*abs(angle-prev_arm_angle))
	prev_arm_angle = angle

def move_base(angle):
	global prev_base_angle
	servo_controller.move_servo_position(1, linear_scale(base_range, angle), 180)
	time.sleep(1.5/180*abs(angle-prev_base_angle))
	prev_base_angle = angle

def sweep_servos():
	'''moves servos to min and max'''

	# servo sweep test
	move_arm(0)
	move_base(0)

	move_arm(180)
	move_base(180)

	move_arm(0)
	move_base(0)

