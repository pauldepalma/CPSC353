
#from sage.crypto.sbox import SBox 
from sage.crypto.block_cipher.sdes import SimplifiedDES 
SO=[[1,0,3,2],[3,2,1,1],[0,2,1,3],[3,1,3,2]]
B=[]
for i in range(16):
 j = ZZ(i).binary().zfill(4)
 B+= [SO[ZZ('0b' + j[0] + j[3])] [ZZ( '0b'+j[1] + j[2] )]]

sbo = mq.Sbox(B)

sbo.difference_distribution_matrix()
