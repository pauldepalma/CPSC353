#recursive GCD

def GCD(a,b):
 #WLOG switch a and b
 if (a < b):
  tmp = a
  a = b
  b = tmp 

 if a % b == 0:  
   return b 
 return GCD(b, a%b) #set divident to divsor,  set divisor to remainder
