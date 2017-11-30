     prog="import sys
# split strings by '.' and convert to numeric.  Append some zeros
# because we need at least 4 digits for the hex conversion.
# map returns an iterator in Python 3.0 and a list in 2.x
minver = list(map(int, '2.5'.split('.'))) + [0, 0, 0]
minverhex = 0
# xrange is not present in Python 3.0 and range returns an iterator
for i in list(range(0, 4)): minverhex = (minverhex << 8) + minver[i]
print(sys.hexversion < minverhex)
sys.exit(sys.hexversion < minverhex)"
python -c "$prog"
