# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 1 part 2 of Homework 1

# Crypto-coin Hedge Fund (20pt)
# With the rise of crypto-currencies, you decided to make money by trading Bitcoins.
# To make meaningful amounts of money, you need other people's money. However, it is
# hard to convince people with money unless you can quantitatively demonstrate you
# are not going to lose money. Hence, you will need to calculate various statistics
# on your prices data.

# Part 2. Go over the prices file, and calculate the max, min, mean and the standard
# deviation for the prices. Find the corresponding dates for max, min and mean, and print
# them to screen. [13 pts]

import datetime
import math

try:
    file = open("prices_sample.csv")
except IOError:
    print "Unable to open the file prices_sample.cvs"
else:
    line = file.readline()
    dates = []
    values = {}
    
    while line:
        lst = line.split(",")
        try:
            values[float(lst[1])] = int(lst[0])
            line = file.readline()
        except ValueError:
            break

    file.close()
    valueSort = values.keys()
    valueSort.sort()

    print("The max is " + str(valueSort[-1]))
    time = datetime.datetime.fromtimestamp(values[valueSort[-1]])
    print("The date associated with that is " + time.strftime('%Y-%m-%d %H:%M:%S') + "\n")

    print("The min is " + str(valueSort[0]))
    time = datetime.datetime.fromtimestamp(values[valueSort[0]])
    print("The date associated with that is " + time.strftime('%Y-%m-%d %H:%M:%S') + "\n")

    length = len(values)

    print("The medium is " + str(valueSort[int(length/2)]))
    time = datetime.datetime.fromtimestamp(values[valueSort[int(length/2)]])
    print("The date associated with that is " + time.strftime('%Y-%m-%d %H:%M:%S'))

    print
    total = reduce(lambda x,y: x + y, valueSort)
    avg = total/length
    print("The mean is " + str(avg))

    sum = map(lambda x: (x-avg)**2, values) # (x-avg)^2
    total = reduce(lambda x,y: x + y, sum)  # Add all values
    total /= length
    print("The standard deviation is " + str(math.sqrt(total)))
