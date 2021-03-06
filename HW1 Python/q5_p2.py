# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 5 part 2 of Homework 1

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

# Part 2. Write a program that prompts the user to enter a password, and does not
# terminate until a strong password entered(i.e., keeps asking for the password)[5 pts].

from q5_p1 import password_check

userInput = raw_input("Enter Password: ")

while password_check(userInput) == False:
    userInput = raw_input("That was not a valid password. Try again!\n")
