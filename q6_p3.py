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

def interleave(lst1, lst2, res, i, j, lis):
    if i == len(lst1) and j == len(lst2):
        list = res[:]
        lis.append(list)
        return
    if i < len(lst1):
        res.append(lst1[i])
        interleave(lst1, lst2, res, i + 1, j, lis)
        res.remove(lst1[i])
    if j < len(lst2):
        res.append(lst2[j])
        interleave(lst1, lst2, res, i, j + 1, lis)
        res.remove(lst2[j])


res = []
lis = []
lst1 = [1,2]
lst2 = [3,4]
interleave(lst1, lst2, res, 0, 0, lis)
print(lis)
