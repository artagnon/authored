euler5 :: (Integral a) => a
-- Running time ~0s
euler5 = foldr lcm 1 [1..20]
    where gcd a 0 = a
          gcd a b = gcd b (a `mod` b)
          lcm a b = (a*b) `div` gcd a b

main = print euler5
