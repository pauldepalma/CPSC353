#iterators use a modified list comprehension syntax

#iterate over the first 10 primes of the form 4p + 1 where p is prime
w = (4*p + 1 for p in Primes() if is_prime(4*p+1))

for i in range(10):
  print next(w)

