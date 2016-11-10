import time
import sys

txt_in = sys.argv[1]
file_out = sys.argv[2]

print "wait 1 sec ..."
time.sleep(1)
print "wait 2 sec ..."
time.sleep(2)
print "wait 3 sec ..."
time.sleep(3)

writer = open(file_out,"w")
writer.write(txt_in)
writer.close()
