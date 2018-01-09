#an approximation of md2 found in McAndrew, p. 278
#returns 16 character digits
def padding(M):
  M_L = [int(num) for num in str(M)]
  N = len(M_L)
  pad_amt = 16 - (N  % 16)
  alph = [chr(i + ord('A')) for i in range(26)]
  pad = [ord(alph[i]) for i in range(pad_amt)]
  
  for i in range(len(pad)):
    M_L.append(pad[i])
  return M_L

def checksum(M_L):
  L = 0
  C_j = 0
  r = len(M_L) // 16
  check = []
  for i in range(r):
    for j in range(16):
      c = (M_L[2*i+j])
      S = c^^L  
      C_j = C_j ^^ S
      L = C_j
      check.append(C_j)
    C_j = 0;  
  for i in range(2):  
    M_L.append(check[i])
  return (M_L,S)

def hash(M_L,S):
  N = len(M_L)
  S_L = [i for i in range(255)] 
  X_L = [0 for i in range(48)] 
  for i in range(N//16):
    for j in range(16):
      X_L[j+16] = M_L[16*i + j]
      X_L[j+32] = X_L[j+16] ^^ X_L[j] 
  t = 0
  for j in range(18):
    for k in range(48):
      t = X_L[k] ^^ S_L[t]
      X_L[k] = t
    t = (t+j) % 256
  X = ''
  for i in range(15):
    X = X + str(X_L[i])
  return X[:16]
  
def md2(M):
  M = padding(M)
  M, S = checksum(M)
  return hash(M,S)

