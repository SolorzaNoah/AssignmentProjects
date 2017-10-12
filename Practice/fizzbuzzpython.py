#!/usr/bin/python

num = input("Give me a number, and I shall determine something, mwahaha!\n")
if num % 3 == 0 and num % 5 == 0:
	print "FizzBuzz"
	quit() 
if num % 3 == 0:
	print "Fizz"
if num % 5 == 0:
	print "Buzz"