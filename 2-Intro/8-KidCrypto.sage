'''
Kid RSA, a non-number theory version of RSA.  Found in McAndrew, p. 12 

Load the file
Then run the functions

For example, to run with the values from McAndrew:

sage: print(make_keys(0))

The private and public keys are displayed

'''


'''
Pre:   gen is a boolean variable 
Post:  public key (n,e) and private key (d) are generated 
Notes: if gen is True, internal variables are generated
       if gen is False, internal variables hold values from McAndrew, p. 13 
       public and private keys are generated  
       Executed by Alice who presumably posts her public key
'''
def make_keys(gen):
    if gen: 
      a,b,A,B = choose_rand(nth_prime(2),nth_prime(200))
    else:
      a = 3
      b = 4
      A = 5
      B = 6 
    M = a*b - 1
    e = A*M + a 
    d = B*M + b
    n = (e * d - 1)/M
    #(n,e) is the public key
    #d is the private key
    return (n,e),d 

'''
Pre: start and stop are input to randint
Post: Returns four random ints in [start,stop] 
'''
def choose_rand(start,stop):
  a = randint(start,stop)
  b = randint(start,stop)
  A = randint(start,stop)
  B = randint(start,stop)
  return(a,b,A,B)

'''
Pre:  param 1 is the plaintext to be encrypted
      param 2 is a 2-tuple holding the public key 
Post: ciphertext is returned
Notes: Executed by Bob using Alice's public key. 
'''
def encrypt(plaintext,public):
  ciphertext = (plaintext * public[1] % public[0]) 
  return ciphertext

'''
Pre: param 1 is the ciphertext to be decrypted 
     param 2 is the private key 
     param 3 is a two-tuple holding the public key) 
Post: ciphertext is returned
Notes: executed by Alice who has the private key 
'''
def decrypt(ciphertext,private,public):
  plaintext = (ciphertext * private % public[0]) 
  return plaintext
