# RSA PRNG
#e.g., p = 19, q = 23, e = 7, seed = 10
def RSA_PRNG(p,q,e,seed,times):
  n = p*q
  s = [seed]
  for i in range(1,n):
    s.append(power_mod(s[i-1], e, n)) 
  b = [j%2 for j in s]
  return s,b

