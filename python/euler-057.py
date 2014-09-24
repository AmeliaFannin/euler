# Square root convergents
# Problem 57
# It is possible to show that the square root of two can be expressed 
# as an infinite continued fraction.



# By expanding this for the first four iterations, we get:

# 1 + 1/2 = 3/2 = 1.5
# 1 + 1/(2 + 1/2) = 7/5 = 1.4
# 1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...
# 1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...

# The next three expansions are 99/70, 239/169, and 577/408, 
# but the eighth expansion, 1393/985, 
# is the first example where the number of digits in the numerator exceeds 
# the number of digits in the denominator.

# In the first one-thousand expansions, 
# how many fractions contain a numerator with more digits than denominator?

#answer: 153
# time: .026s

def fraction_sum():
    count = 0
    p, q = 3, 2

    for x in range(1000):
        if len(str(p)) > len(str(q)):
            count += 1

        p, q = p + (2 * q), p + q

    return count

print fraction_sum()

