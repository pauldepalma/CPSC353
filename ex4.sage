#some prime number functions

print "1st 10 primes using function nth_prime and list comprehension"
print([nth_prime(x) for x in range(1,11)])

 
print "1st 10 primes using function primes_first_n"
print primes_first_n(10)

print "all primes in range 2 to 30 using function prime_range"
print prime_range(2,30) 
