import Data.List

primes :: (Integral a) => [a]
primes = 2 : filter isPrime [3, 5 ..]
    where isPrime n = all (not . divides n) $ takeWhile (\p -> p*p <= n) primes
          divides n p = n `mod` p == 0

euler12 :: (Integral a) => a
-- Running time ~1s
euler12 = head $ filter ((> 500) . n_divisors) triangleSeries
    where triangleSeries = [div (n * (n + 1)) 2 | n <- [1..]]
          n_divisors n = product . map ((+1) . length) . primeGroups $ n
	  primeGroups n = group . (primeFactors n) . filterPrimes $ n
          filterPrimes n = filter (\x -> n `mod` x == 0) primes

primeFactors :: (Integral a) => a -> [a] -> [a]
-- Pass a list of prime numbers to me :)
primeFactors 1 _ = []
primeFactors a (x:xs)
        | a `mod` x /= 0 = primeFactors a xs
        | otherwise = x : (primeFactors (a `div` x) (x:xs))


main = print euler12
