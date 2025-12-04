module Main where

-- =========================================
-- HC5T1: Apply a function three times
-- =========================================
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f (f (f x))

-- Example: applyThrice (+1) 5 → 8


-- =========================================
-- HC5T2: Filter odd numbers 1–30
-- =========================================
oddNumbers :: [Int]
oddNumbers = filter odd [1..30]


-- =========================================
-- HC5T3: Check if any word starts with uppercase
-- =========================================
containsUppercaseStart :: [String] -> Bool
containsUppercaseStart wordsList =
    any (\w -> not (null w) && head w `elem` ['A'..'Z']) wordsList


-- =========================================
-- HC5T4: Rewrite function using lambda
-- =========================================
biggerThan10 :: Int -> Bool
biggerThan10 = \x -> x > 10


-- =========================================
-- HC5T5: Partial application multiply by 5
-- =========================================
multiplyByFive :: Int -> Int
multiplyByFive = (* 5)


-- =========================================
-- HC5T6: Function composition to square then filter even
-- =========================================
evenSquares :: [Int] -> [Int]
evenSquares = filter even . map (^2)


-- =========================================
-- HC5T7: Rewrite using $ operator
-- Original: sum (map (*2) (filter (>3) [1..10]))
-- =========================================
result :: Int
result = sum $ map (*2) $ filter (>3) [1..10]


-- =========================================
-- HC5T8: Point-free style
-- Original: addFive x = x + 5
-- =========================================
addFive :: Int -> Int
addFive = (+ 5)


-- =========================================
-- HC5T9: Apply a function twice to each element
-- =========================================
transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)


-- =========================================
-- HC5T10: Check if any squared value > 50
-- Using filter, map, any
-- =========================================
anySquareGreaterThan50 :: [Int] -> Bool
anySquareGreaterThan50 = any (>50) . map (^2)


-- =========================================
-- MAIN FUNCTION
-- =========================================
main :: IO ()
main = do
    putStrLn "=== HC5 Practical Tasks Output ==="

    putStrLn "\n-- Task 1: applyThrice --"
    print (applyThrice (+2) 5)
    print (applyThrice (*3) 1)

    putStrLn "\n-- Task 2: Odd numbers from 1 to 30 --"
    print oddNumbers

    putStrLn "\n-- Task 3: Contains uppercase start --"
    print (containsUppercaseStart ["hello", "World", "haskell"])
    print (containsUppercaseStart ["apple", "banana"])

    putStrLn "\n-- Task 4: biggerThan10 (lambda version) --"
    print (biggerThan10 5)
    print (biggerThan10 20)

    putStrLn "\n-- Task 5: multiplyByFive --"
    print (multiplyByFive 7)

    putStrLn "\n-- Task 6: evenSquares --"
    print (evenSquares [1..10])

    putStrLn "\n-- Task 7: result using $ operator --"
    print result

    putStrLn "\n-- Task 8: addFive (point-free) --"
    print (addFive 10)

    putStrLn "\n-- Task 9: transformList (apply twice) --"
    print (transformList (+1) [1,2,3])
    print (transformList (*2) [1,2,3])

    putStrLn "\n-- Task 10: anySquareGreaterThan50 --"
    print (anySquareGreaterThan50 [5,6,7])
    print (anySquareGreaterThan50 [1,2,3])

    putStrLn "\n=== END OF HC5 ==="
