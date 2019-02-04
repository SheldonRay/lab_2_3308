#!/bin/bash
# Authors : Sheldon Ray
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Please enter a regular expression along with a text file name"
read regularEx
read fileName
#Finding the regex commands which the user prompted then placing them into the correct text file
grep -n $regularEx $fileName * < command_results.txt
#Finding all geocity emails then putting them into the correct text file
grep -n '@geocities.com' $fileName * < email_results.txt
#Finding all  phone numbers which start with 303 then putting those phone numbers into the correct text file
grep -n '303-' $fileName * < phone_results.txt
#this counts the @ symbols in the regex practice text file then returns the number found of those, thus finding the emails
grep -c '@' $fileName
#For the phone number counter I took this formula from stack overFlow, I take no credit for the following line of code. As I found it online then implemented it in my lab.
grep -c '\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' $fileName
