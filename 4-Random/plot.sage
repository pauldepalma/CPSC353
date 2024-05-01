#plotting a linear congruential generator output
#a work in progress
def LCG(m, a, b, seed):
  x = seed
  lst = []
  for i in range(m):
    lst.append(x)
    y = (a * x + b) % m
    x = y
  return lst

def visual():
 A = LCG(256,85,1,0)
 #B = LCG(256,237,1,0)
 pA = [ (A[i],A[i+1]) for i in range (255)]
 #pB = [ (B[i],B[i+1]) for i in range (255)]
 list_plot(pA,aspect_ratio=1) 
 '''
