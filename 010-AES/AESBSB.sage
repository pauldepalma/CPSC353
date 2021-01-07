#code to compute a single S-box cell transformation

#define a field for the coefficients
K.<a> = GF(2)[]

#define a finite field
F.<x> = GF(256,name='x',modulus=a^8+a^4+a^3+a+1)

#element from the A matrix to undergo an affine transformation
b = x^7+x^5+x^4+x^2+1

#find the inverse
b1 = 1/b

#define a polynomial ring over a field (for the coefficients)
R.<y> = PolynomialRing(GF(2)) 

#Affine transformation: q = a*b1 + c mod(Y^8+1)
a = y^4+y^3+y^2+y+1
c = y^6+y^5+y+1
q = (a*b1.polynomial().subs(x=y)+c).mod(y^8+1)
print(q)

