import serial

#ser = serial.Serial("/dev/ttyUSB1", 115200)
ser = serial.Serial("/dev/ttyUSB1", 115200, timeout=1)
#ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=1)
print "init..."
while True:
    print ser.readline()
