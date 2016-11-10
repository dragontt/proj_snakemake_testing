import sys

def parse_file(file_input):
	reader = open(file_input,"r")
	line = reader.readline().strip().split("-")
	reader.close()
	return line

file_input1 = sys.argv[1]
file_input2 = sys.argv[2]
file_output = sys.argv[3]

line1 = parse_file(file_input1)
line2 = parse_file(file_input2)

writer = open(file_output, "w")
writer.write("%s %s\n" % (line1[1],line1[0]))
writer.write("%s %s\n" % (line2[1],line2[0]))
writer.close()
