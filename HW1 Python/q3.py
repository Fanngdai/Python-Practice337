# Fanng Dai
# Stony Brook University
# CSE337
# Due March 1st
# Question 3 of Homework 1

# One Step Ahead [20 pts]
# Your model should work well in theory, but it has a problem
# Too many people know what
# you know, and you can not profit using this strategy. You need to step up your game.
# What if you were able to read and analyze finance news automatically and use it to
# improve your trading models? This will be faster than a human reading the news and it
# may give you the edge.

# Question. Write a program to parse and get the titles, source(e.g., Wall Street
# Journal) and the date(e.g., 1 hour ago) of all articles from
# https://finance.google.com/finance/market_news. The program returns the a list of
# lists, where each list contains the title, source and the date of an article. Write
# all these to a file named top10articles.txt, one line for each article, and with comma
# separated values(e.g., title,source,date )[20 pts].
# Hint: You do not have to use BeautifulSoup for this, but it may make things much easier.

from bs4 import BeautifulSoup
import urllib

r = urllib.urlopen("https://finance.google.com/finance/market_news").read()
website = BeautifulSoup(r, "html.parser")

fout = open("top10articles.txt", "w")

for i in range(0, 10):
    title = website.find_all(class_="name")[i].get_text()
    source = website.find_all(class_="src")[i].get_text()
    date = website.find_all(class_="date")[i].get_text()
    fout.write(title.encode('utf-8').strip() + "," + source.encode('utf-8') + "," + date.encode('utf-8') + "\n")

fout.close()
