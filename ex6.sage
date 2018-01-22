#iterative GCD

def GCD(a,b):
  while (a % b != 0):  #stop when the remainder is 0
    q = a // b
    r = a % b
    a = b   #divisor becomes the dividend 
    b = r   #remainder becomes the divsor
  print r   #gcd is last non-zero remainder 
