#BBS
#e.g., p= 19, q = 23, seed = 9, times = 20
def BBS(p, q, seed, times):
  n = p * q
  s = [seed]
  for i in range(1,times):
    s.append(s[i-1]^2 % n)
  b = [x % 2 for x in s]
  return s, b
