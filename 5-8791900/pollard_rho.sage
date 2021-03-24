'''
CPSC 353
Paul De Palma
depalma
ex13.sagew
Pollard Rho
Story of Frank Nelson Cole in 1903 and 2^67 - 1
'''

def pollard_rho(n):
  x = Mod(2,n);
  y = x
  while true:
   x = x^2 + 1
   y = (y^2 + 1)^2 + 1
   g = gcd(x-y,n)
   if g > 1:
    print g 
    return 
   if x == y:
    print "no factor found"
    return 
