import random
def key_gen():
    return random.randint(1,25)    

def encrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos + key) % 26
    pos = pos + ord('A')
    return chr(pos)

def decrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos- key + 26) % 26
    pos = pos + ord('A')
    return chr(pos)

