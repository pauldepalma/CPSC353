#a linear congruential generator

def LCG(m, a, b, seed):
  x = seed
  lst = []
  for i in range(m):
    lst.append(x)
    y = (a * x + b) % m
    x = y
  return lst
