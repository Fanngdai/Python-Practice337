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
    amt = 0
    values = {}
    temp = []
    
    while line:
        lst = line.split(",")
        try:
            values.setdefault(float(lst[1]), []).append(int(lst[0]))
            temp.append(float(lst[1]))
            line = file.readline()
            amt += 1
        except ValueError:
            break
    file.close()

    price = sorted(temp);

    max = price[-1]
    print("MAX:\t" + str(max))
    print "Date:\t",
    listOfDates = values[max]
    for i in listOfDates:
        time = datetime.datetime.fromtimestamp(i+18000)
        print time.strftime('%Y-%m-%d %H:%M:%S') + "\n\t",

    min = price[0]
    print("\nMIN:\t" + str(min))
    print "Date:\t",
    listOfDates = values[min]
    for i in listOfDates:
        time = datetime.datetime.fromtimestamp(i+18000)
        print time.strftime('%Y-%m-%d %H:%M:%S') + "\n\t",

    if amt%2==0:     # even
        low = price[amt/2-1]
        high = price[amt/2]
        print("\nMED1:\t" + str(low))
        print "Date:\t",
        listOfDates = values[low]
        for i in listOfDates:
            time = datetime.datetime.fromtimestamp(i+18000)
            print time.strftime('%Y-%m-%d %H:%M:%S') + "\n\t",

        print("\nMED2:\t" + str(high))
        print "Date:\t",
        listOfDates = values[high]
        for i in listOfDates:
            time = datetime.datetime.fromtimestamp(i+18000)
            print time.strftime('%Y-%m-%d %H:%M:%S') + "\n\t",

        print("\nAVG MED:\t" + str((high+low)/2))
    else:               # odd
        low = price[int(math.ceil(amt/2))]
        print("MEDIUM:\t" + str(valueSort[low]))
        listOfDates = values[low]
        for i in listOfDates:
            time = datetime.datetime.fromtimestamp(i+18000)
            print time.strftime('%Y-%m-%d %H:%M:%S') + "\n\t",

    total = reduce(lambda x,y: x + y, price)
    avg = total/amt
    print("\nAVG:\t" + str(avg))

    sum = map(lambda x: (x-avg)**2, price) # (x-avg)^2
    total = reduce(lambda x,y: x + y, sum)  # Add all values
    total /= amt
    print("SD:\t" + str(math.sqrt(total)))
