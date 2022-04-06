#!/usr/bin/env cabal
{- cabal:
build-depends: base
-}

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
-- The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

sumList :: [Int] -> Int
sumList []     = 0
sumList (x:xs) = x + sumList xs

aggregateLists :: [Int] -> [Int] -> Int
aggregateLists listA listB = sumList listA + sumList listB

multiplesOfThree = [x | x <- [1..999], x `mod` 3 == 0]
multiplesOfFive  = [x | x <- [1..999], x `mod` 5 == 0 && x `mod` 3 /= 0]

main = do
    print (aggregateLists multiplesOfThree multiplesOfFive)
