import Data.List

euler14 :: Integer
-- Stack overflow!
euler14 = foldl1 (\ x y -> if chain_len x < chain_len y then y else x) l
    where chain_len = length . collatz_chain
          l = [2, 3 .. 999999]

euler14_alt = fst . maximumBy (\a b -> compare (snd a) (snd b)) $ collatzip
-- Solved by using additional data structure
-- Running time ~ 20s
    where collatzip = zip l (map length $ map collatz_chain l)
          l = [2, 3 .. 999999]

euler14_strict = foldl1' (\ x y -> if chain_len x < chain_len y then y else x) l
-- Solved by forcing strictness
-- Running time ~ 135s
    where chain_len = length . collatz_chain
          l = [2, 3 .. 999999]

collatz_chain :: Integer -> [Integer]
collatz_chain 1 = [1 ]
collatz_chain n | even n = n : (collatz_chain $ div n 2)
                | otherwise = n : (collatz_chain $ 3 * n + 1)

main = print euler14_alt
