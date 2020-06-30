import smbus, time
bus = smbus.SMBus(1)
addr = 0x20


def get_joystick():
    global bus_data, X, Y
    

    try:
        bus_data = bus.read_i2c_block_data(addr, 0x03, 5)

    except Exception as e:
        print(e)

    X = (bus_data[0]<<8 | bus_data[1])>>6
    Y = (bus_data[2]<<8 | bus_data[3])>>6

    time.sleep(.05)
    
    return X, Y, bus_data[4]

