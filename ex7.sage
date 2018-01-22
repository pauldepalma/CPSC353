#recursive GCD

def GCD(a,b):
  if a % b == 0:  #stop wien the remainder is 0
   print b
  GCD(b, a%b) #divisor becomes the dividend, remainder becomes the divisor
