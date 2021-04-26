#m is the text message to hash
#b1,e1,b2,e2 are the bases and exponents used to compute p and q
#size1 and size2 exponents used to compute p and q
#To reproduce the results in McAnddrew, p. 282
#   shamir("A dog",2,20,3,13)
#   shamir("A cog",2,20,3,13)
def shamir(m,b1,e1,b2,e2):
  p = next_prime(b1^e1)
  q = next_prime(b2^e2)
  l = lcm(p-1,q-1)
  n = p*q

  a = get_order(l,n) 

  x = txt_to_num(m)

  hash = power_mod(a,x,n)
  return hash 

#find a whose order mod n is l 
def get_order(l,n):
  a = 2
  k = Mod(a,n).multiplicative_order()
  while(k != l):
    a = a + 1
    k = Mod(a,n).multiplicative_order()
  return a

#Converts a string to a decimal digit sequence
#msg_in is a string
def txt_to_num(msg_in):      
  #transforms string to the indices of each letter in the 8-bit ASCII table
  #ex: "AB" becomes [65,66]
  msg_idx = list(map(ord,msg_in))

  #The integers in the list, since they are ASCII, are in the range 0..255
  #These are treated, collectively, as a base 256 integer, but from left to right
  #rather than right to left
  #This sequence of integers is converted to base 10 
  #ex: [65,66] = 65*256^0 + 66*256^1 = 16961
  num = ZZ(msg_idx,256)
  return num 
