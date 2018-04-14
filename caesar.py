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

def main():
    key = 3
    plain = 'GONZAGA'
    cipher = []
    for ch in plain:
        ch = encrypt(ch,key)
        cipher.append(ch)
    cipher_out = ''.join(cipher)
    print 'Cipher Text: ' + cipher_out

    plain = []
    for ch in cipher:
        ch = decrypt(ch,key)
        plain.append(ch)
    plain_out = ''.join(plain)
    print 'Plain Text: ' + plain_out
    

main()
