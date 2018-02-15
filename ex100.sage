#List Comprehension, a python version of set-builder notation

import random
import math

SIZE = 5
LOW = 1
HIGH = 100

def disp_lst(lst):
    for i in range(SIZE):
        print (lst[i])
    print()
    
def main():

    #gen list of random integers
    lst = [random.randint(LOW,HIGH) for i in range(SIZE)]
    disp_lst(lst)

    #gen list of integers in a range
    lst = [i for i in range(SIZE)]
    disp_lst(lst)

    #gen list of powers of 2
    lst = [int(math.pow(2,i)) for i in range(SIZE)]
    disp_lst(lst)

    #gen list of tuples of the form (integer,sqrt(integer))
    lst = [(i,math.sqrt(i)) for i in range(SIZE)]
    disp_lst(lst)

main()
