# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 6 part 1 of Homework 1

# Coding for Fun[15 pts]
# Part 1. Find and print all prime numbers between 2 and 100 (inclusive) by using at
# least one lambda function[4 pts].

prime = [2]

# Checks if x is divisible by y
divisible = lambda x,y: 1 if x%y==0 else 0

for i in range(3,101):
    prime.append(i)
    for j in prime:
        if i!= j and divisible(i,j)==1:
            prime.remove(i)
            break

for i in prime:
    print(str(i))
