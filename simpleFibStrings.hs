module SimpleFibStrings where 

solve :: Int -> String
solve 0 = "0"
solve 1 = "01"
solve n = solve (n-1) ++ solve (n - 2)

sieve :: [Int] -> [Int]
sieve [] = [] 
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

primesUpTo :: Int -> Int -> [Int]
primesUpTo m n = sieve [m..n]

sumDigitSquare :: Int -> Int 
sumDigitSquare 0 = 0
sumDigitSquare x = (x 'mod' 10)^2 + sumDigitSquare(x 'div' 10)

solve :: Int -> Int -> Int
solve a b = (primesUpTo a b) 