
def BBS_PRNG(p,q,seed,length):
  n = p*q
  s = [seed]
  for i in range(length + 1):
   s.append(s[-1]^2 % n)
  b = [x % 2 for x in s]
  return b,s 
