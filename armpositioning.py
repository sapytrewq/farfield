import detector
import joystick
import time
import detector 
import servocontrol

def gainset(anglex, angley):


        x,y,button = joystick.get_joystick()

        print("voltage:",detector.read_detector(),"V")

        if y > 700:
                if angley < 180: angley += 3
                print("moving base to:",angley)
                servocontrol.move_base(angley)
        elif y < 200:
                if angley > 0: angley -= 3
                print("moving base to:",angley)
                servocontrol.move_base(angley)
        if x > 700:
                if anglex < 180: anglex += 3
                print("moving arm to:",anglex)
                servocontrol.move_arm(anglex)
        elif x < 200: 
                if anglex > 0: anglex -= 3
                print("moving arm to:",anglex)
                servocontrol.move_arm(anglex)
        return anglex, angley

