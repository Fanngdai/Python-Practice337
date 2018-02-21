# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 6 part 4 of Homework 1

# Coding for Fun[15 pts]
# Part 3. Complete the above function which takes three string variables as input, and replace all substrings in
# the first string that matches a given pattern specified by the second input with a given substitute string
# specified by the last input, and return this updated string as output. For example,
# count_pattern(shjhfdddedaaba, xyx, 123) returns s123fdd123a123 as there are three substrings in the
# first string that match the given pattern: hjh, ded, aba. [5 pts]

import re

def pattern_check(str, pattern):
    if len(str) != len(pattern):
        return 0
    str = list(str)
    pattern = list(pattern)
    for i in range(len(pattern)):
        pat = pattern[:i]
        for j in range(len(pat)):
            if pattern[i] == pattern[j]:
                if str[i] != str[j]:
                    return 0
            else: # Does not equal
                if str[i] == str[j]:
                    return 0
    return 1

def count_pattern(str, pattern, replace_str):
    assert len(str) >= len(pattern)
    pattern_len = len(pattern)
    result = ""
    
    j = 0
    for i in range(len(str)):
        if i < j:
            continue
        elif pattern_check(str[i:i+pattern_len],pattern) == 1:
            result += replace_str
#                str = str[:i] + str[i+pattern_len-1:]
            j = i + pattern_len
        else:
            result += str[i]
    return(result)

#    pattern_check = re.compiler(pattern)
#    pat = re.compile(pattern)
#    pat = ascii.pat.findall(str)

#str = 'shjhfdddedaABAB'
#print(count_pattern(str, 'xyx', '123'))

#str = 'aaaaa'
#print(count_pattern(str, 'xx', '1'))
