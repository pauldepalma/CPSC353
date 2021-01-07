
def RSA_PRNG(p,q,e,seed,length):
  n = p*q
  s = [seed]
  for i in range(length-1):
   s.append(power_mod(s[-1],e,n))
  x = [j % 2 for j in s]
  return x,s
