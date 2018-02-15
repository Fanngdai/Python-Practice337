# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 1 part 1 of Homework 1

# Crypto-coin Hedge Fund (20pt)
# With the rise of crypto-currencies, you decided to make money by trading Bitcoins.
# To make meaningful amounts of money, you need other people's money. However, it is
# hard to convince people with money unless you can quantitatively demonstrate you
# are not going to lose money. Hence, you will need to calculate various statistics
# on your prices data.

# Part 1. You are provided with a file(prices_sample.csv) where each line is time and
# the corresponding Bitcoin value. First, you will need to convert the time to a more
# desirable format. The timestamps are expressed in UNIX epoch, which means it denotes
# the number of seconds passed since Jan 1, 1970(e.g., Jan 1, 1970 means 0). You need
# to convert this to a date time format(i.e., YYYY-MM-DD and HH:MM:SS). Fortunately,
# Python already provides functionality for this conversion. Find that out, convert each
# timestamp in the file to actual date and time, and write it back to another file named
# datetimes.txt. [7 pts]

import datetime
import os

try:
    file = open("prices_sample.csv")
except IOError:
    print "Unable to open the file prices_sample.cvs"
else:
    line = file.readline()
    fout = open("datetimes.txt", "w")

    while line:
        lst = line.split(",")
        
        try:
            time = datetime.datetime.fromtimestamp(float(lst[0]))
        except ValueError:
            break
        
        fout.write(time.strftime('%Y-%m-%d %H:%M:%S') + "\t" + lst[1] + "\n")
        line = file.readline()

    fout.close()
    file.close()
