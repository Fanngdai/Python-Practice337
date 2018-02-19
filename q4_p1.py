# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 4 part 1 of Homework 1

# Word Analytics [15 pts]
# Now you are able to grab finance articles and use them for your analytics. One good
# way of deriving information from text is to count words in the text. To this end, you
# need to write a program that gets a filename as an input, retrieves the text, and
# returns a dictionary where keys are words, and the values are the number of occurrence
# of these words.
# You can test your program on this file after downloading it:
# http://www.gutenberg.org/files/100/100-0.txt

# Part 1. Write a Python program that parses the given file path and returns a
# dictionary where keys are the words in the text, and the values are the word counts. A
# word is defined by the space characters around it. You should ignore the empty lines
# [10 pts].

def wordAnalytic():
    word = {}
    input = raw_input("Enter File Name: ");

    try:
        file = open(input, "r");
    except IOError:
        print "File not found"
    else:
        line = file.readline()
    
        while line:
            for ele in line.split(" "):
                ele = ele.strip()
                word[ele] = word.get(ele,0) + 1
            line = file.readline()
        file.close()
    return word
