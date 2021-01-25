#iterative GCD

def GCD(a,b):
 if a == b:
  return a 
 
 #WLOG, switch a and b
 if a > b:  
  tmp = a 
  a = b
  b = tmp


 while (a % b != 0):  
  q = a // b  
  r = a % b
  a = b   #set dividend to divsor 
  b = r   #set divisor to remainder
 return r #gcd is last non-zero remainder 
