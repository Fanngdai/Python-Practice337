# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 4 part 2 of Homework 1

# Word Analytics [15 pts]
# Now you are able to grab finance articles and use them for your analytics. One good
# way of deriving information from text is to count words in the text. To this end, you
# need to write a program that gets a filename as an input, retrieves the text, and
# returns a dictionary where keys are words, and the values are the number of occurrence
# of these words.
# You can test your program on this file after downloading it:
# http://www.gutenberg.org/files/100/ 100-0.txt

# Part 2. Using the dictionary you created in the previous question, find the most 10 common words, and write them into top10words.txt file [5 pts].

from q4_p1 import wordAnalytic

fout = open("top10words.txt", "a")
lst = wordAnalytic()
sortlst = []
for key, value in sorted(lst.iteritems(), key=lambda (k,v): (v,k)):
    sortlst.append(key + " " + str(value))

for i in range(len(sortlst)-1, len(sortlst)-11, -1):
    print sortlst[i]
fout.close()
