# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 5 part 1 of Homework 1

# Password Check [15 pts]
# Your hedge fund started to make good money, and you have many investors. You decided
# to provide information to your investors using a website. You need to make sure your
# users have strong passwords. You will need to check the strength of their password.
# Here are the rules for a strong password:
# -The password should contain at least 8 characters
# -The password should contain at least one numerical, one alphabetical, and one
#   special character(neither numerical, nor alphabetical)
# -The password should not contain the same character more than two times consecutively
# -There should not be patterns with increasing values of length 3 or more(e.g., "abc"
#   or "789"). Hint: "ord()" function may come handy here.
# -Number of distinct characters in the password should not be less than half of the
#   length of the password. For example, "ababcabc" has only three distinct characters,
#   "a", "b" and "c", but the length of the password is 8, hence it fails this test.

# Part 1. Write a Python program that takes a string as input and checks for these
# criteria, and returns True if the password is strong enough, and False if the password
# is not strong enough[10 pts].

import math

digit = lambda word: any(i.isdigit() for i in word)
alpha = lambda word: any(i.isalpha() for i in word)
def special(password):
    for i in password:
        if i.isdigit() or i.isalpha():
            continue
        else:
            return True
    return False

def consecutive(password):
    for i in range(len(password)):
        if i == len(password)-2:
            return True
        if password[i] == password[i+1] and password[i+1] == password[i+2]:
            return False

def increaseValue(password):
    for i in range(len(password)):
        if i == len(password)-2:
            return True
        # Only looking at ascii values
        #if not password[i].isdigit() and not password[i].isalpha():
            #continue
        if ord(password[i]) == ord(password[i+1])-1 and ord(password[i+1])-1 == ord(password[i+2])-2:
            return False

# Decreasing order
#        if ord(password[i]) == ord(password[i+1])+1 and ord(password[i+1])+1 == ord(password[i+2])+2:
#            return False

def password_check(password):
    if(len(password)<8):
        return False
    if digit(password) == False:
        return False
    if alpha(password) == False:
        return False
    if special(password) == False:
        return False
    if consecutive(password) == False:
        return False
    if increaseValue(password) == False:
        return False
    if len(''.join(set(password))) < math.ceil(len(password)/2.0):
        return False
    return True

##False
#print password_check("123")
#print password_check("123ehgyrdvrs*")
#print password_check("1@1@d1@d")
## True
#print password_check("12ab89yz*")
