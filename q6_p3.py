# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 6 part 3 of Homework 1

# Coding for Fun[15 pts]
# Part 3. Write a recursive function to calculate and print all interleavings of two
# lists. The main property of interleavings is that the order of elements in the
# individual lists are preserved. For example, for inputs [1,2] and [3,4], your program
# should result in [1,2,3,4],[1,3,4,2],[1,3,2,4],[3,4,1,2],[3,1,2,4],[3,1,4,2]. [3 pts].

def interleave(lst1, lst2):
    if len(lst1)==0:
        return lst2
    elif len(lst2)==0:
        return lst1
    else:
        return [lst1[0], lst2[0]] + interleave(lst1[1:], lst2[1:])

interleave([1,2],[3,4])
