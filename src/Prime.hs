module Prime where

isPrime1 :: Int -> Bool
isPrime1 n = divisors n == 2

divisors :: Int -> Int
divisors n = length [d | d <- [1 .. n], n `mod` d == 0]

isPrime2 :: Int -> Bool
isPrime2 n
    | n < 2     = False
    | n == 2    = True
    | even n    = False
    | otherwise = try n 3

try :: Int -> Int -> Bool
try n i
    | i * i > n      = True
    | n `mod` i == 0 = False
    | otherwise      = try n (i+1)

mygcd :: Int -> Int -> Int
mygcd a b
    | a < b = mygcd b a
    | otherwise = case a `mod` b of
        r | r == 0    -> b
          | otherwise -> mygcd b r