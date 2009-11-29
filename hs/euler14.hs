import Data.List

euler14 :: Integer
-- Stack overflow!
euler14 = foldl1 (pick_larger chain_length) l
    where chain_length = length . collatz_chain
          l = [2, 3 .. 999999]

euler14_alt = fst . foldl1 (pick_larger snd) $ collatzip
-- Solved by using additional data structure
-- Running time ~ 20s
    where collatzip = zip l (map chain_length l)
          chain_length = length . collatz_chain
          l = [2, 3 .. 999999]

euler14_strict = foldl1' (pick_larger chain_len) l
-- Solved by forcing strictness
-- Running time ~ 135s
    where chain_len = length . collatz_chain
          l = [2, 3 .. 999999]

pick_larger :: (Ord a) => (t -> a) -> t -> t -> t
pick_larger f x y = if f x < f y then y else x
              
collatz_chain :: Integer -> [Integer]
collatz_chain 1 = [1 ]
collatz_chain n | even n = n : (collatz_chain $ div n 2)
                | otherwise = n : (collatz_chain $ 3 * n + 1)

main = print euler14_alt
