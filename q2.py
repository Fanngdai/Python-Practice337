# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 2 of Homework 1

# Correlations Everywhere [15 pts]
# It turns out Bitcoin has a high standard deviation, which means it is a risky trading
# instrument. However, your investor friends decide to invest in it anyways. Now what
# you need is a trading strategy. It turns out one way to do this is to find two
# correlated instruments, and use this correlation to exploit market inefficiencies.
# Hence, you will need to calculate Pearson Correlation between two variables. It turns
# out the two columns of numbers you have in the original file is a good means of
# testing your program.

# Question. Write a program that computes the Pearson Correlation between two
# variables(Unix timestamp and bitcoin price in this example.). Print the result to the
# screen. [15 pts]

import math

try:
    file = open("prices_sample.csv")
except IOError:
    print "Unable to open the file prices_sample.cvs"
else:
    lstX = []
    lstY = []
    avgX = 0
    avgY = 0
    line = file.readline()
    
    while line:
        lst = line.split(",")
        
        try:
            lstX.append(int(lst[0]))
            lstY.append(float(lst[1]))
            avgX += int(lst[0])
            avgY += float(lst[1])
            
#            valueX = int(lst[0])
#            valueX -= abs(valueX)
#            valueY = float(lst[1])
#            valueY -= abs(valueY)
#            
#            sumTop += valueX * valueY
#            sumX += valueX**2
#            sumY += valueY**2
            line = file.readline()
        except ValueError:
            break

    file.close()

    length = len(lstX)
    avgX /= length
    avgY /= length

    for x in lstX:


#    sumX = math.sqrt(sumX)
#    sumY = math.sqrt(sumY)
    try:
#        total = sumTop / (sumX * sumY)
        print(str(total))
    except ZeroDivisionError:
        print("Cannot divide by zero")
#            time = datetime.datetime.fromtimestamp(int(lst[0]))
