#!/usr/bin/env python

USAGE = """jsonify.py <infile> [outfile]

JSONify a log file.
"""

def jsonify(in_file, out_file):
    """Each line is a valid JSON object, but the file as a whole is not.

1. Wrap file in [].
2. Append , to the end of each line but the last.

Do it all via generators so large files are ok.
"""

    try:
        output = open(out_file, mode="w")
        output.write("[\n")

        with open(in_file) as input:
            line = input.next()
            while True:
                try:
                    output.write(line.rstrip())
                    line = input.next()
                    output.write(",\n")
                except StopIteration as ex:
                    output.write("\n")
                    break

    except Exception as ex:
        print "Error: " + str(ex)

    finally:
        output.write("]\n")
        output.close()

if __name__ == '__main__':
    import sys
    if len(sys.argv) < 2:
        print USAGE
        exit(1)

    in_file      = sys.argv[1]

    try:
        out_file = sys.argv[2]
    except:
        out_file = in_file + ".json"

    jsonify(in_file, out_file)
