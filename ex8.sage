#iterative GCD

def GCD(a,b):
  if (a < b):  #arithmetic requires a to be greater
    tmp = a
    a = b
    b = tmp
  if (a % b == 0): #b divides a, so b is gcd
    r = b 
  while (a % b != 0):  #stop when the remainder is 0
    q = a // b
    r = a % b
    a = b   #divisor becomes the dividend 
    b = r   #remainder becomes the divsor
  print r   #gcd is last non-zero remainder 
