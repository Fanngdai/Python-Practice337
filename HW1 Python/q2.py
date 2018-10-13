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
    sumXY = 0
    sumX = 0
    sumY = 0
    sumX2 = 0
    sumY2 = 0
    length = 0
    line = file.readline()
    
    while line:
        try:
            lst = line.split(",")
            x = int(lst[0])
            y = float(lst[1])
            
            sumXY += x*y
            sumX += x
            sumY += y
            sumX2 += x**2
            sumY2 += y**2
            length += 1
            
            line = file.readline()
        except ValueError:
            break

    file.close()

    try:
        temp = (sumX*sumY)/length
        top = sumXY - temp
        
        tempX = (sumX**2)/length
        tempX = sumX2 - tempX
        
        tempY = (sumY**2)/length
        tempY = sumY2 - tempY

        bottom = tempX * tempY
        bottom = math.sqrt(bottom)

        print(str(top/bottom))
    except ZeroDivisionError:
        print("Cannot divide by zero")
