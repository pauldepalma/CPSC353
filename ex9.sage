#recursive GCD

def GCD(a,b):
  if (a < b):
    tmp = a
    a = b
    b = tmp 
  if a % b == 0:  #stop when the remainder is 0
   print b
   return 
  GCD(b, a%b) #divisor becomes the dividend, remainder becomes the divisor
