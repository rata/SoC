import serial
import sys
import Image

print "sys.arv es", sys.argv

def str_to_int(s):
    i = int(s, 16)
    if i >= 2**23:
        i -= 2**24
    return i

def recv_pixel(ser):
        while True:
                byte = ser.readline()

                if byte == '\0':
                        continue
                # Skip comments
                if byte.startswith("--"):
                    continue

                #print "received", byte
                return str_to_int(byte)

if len(sys.argv) != 4:
        print "Usage:", sys.argv[0], "<width> <height> <dst file>"


size = (int(sys.argv[1]), int(sys.argv[2]))
dst_file = sys.argv[3]

#ser = serial.Serial("/dev/ttyUSB0", 19200, parity='N', rtscts=False, xonxoff=False)
#ser = serial.Serial("/dev/ttyUSB1", 115200, parity='N', rtscts=False, xonxoff=False)
ser = serial.Serial("/dev/ttyUSB1", 115200)

img = Image.new('RGB', size)
pixels = img.load()

for x in range(img.size[0]):
    for y in range(img.size[1]):
        px = recv_pixel(ser)
        pixels[x, y] = (px, px, px)

img.save(dst_file)
ser.close()
