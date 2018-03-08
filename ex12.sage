'''
CPSC 353
Paul De Palma
depalma
ex13.sagew
Pollard Rho
'''

def pollard_rho(n):
  x = Mod(2,n);
  y = x
  while true:
   x = x^2 + 1
   y = (y^2 + 1)^2 + 1
   g = gcd(x-y,n)

   if g > 1 and g < n:
     print g; break
   if x == y:
    print "no factor found"; break

