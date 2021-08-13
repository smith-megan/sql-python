log_file = open("um-server-01.txt")
# opens file for python to work with

def sales_reports(log_file):
# defines a function and feeds it the file
    for line in log_file:
# Begins a loop of the file, setting line as our variable
        line = line.rstrip()
# redefines the line variable to strip excess spaces
        day = line[0:3]
# sets the day variable to the first three letters of the line.
        if day == "Mon":
# if the day variable is equal to a string then...
            print(line)
# print out that line to the console

sales_reports(log_file)
# calls the function and sets the argument as the opened file