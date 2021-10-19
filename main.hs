import Data.Char ( ord, chr )

-- Exercise 1

myLast :: [a] -> a
myLast [] = error "List must contain items"
myLast [x] = x
myLast (x:xs) = myLast xs

-- Exercise 2

fourth :: [a] -> a
fourth [] = error "List must contain items"
fourth xs = xs !! 3

fourth' :: [a] -> a
fourth' [] = error "List must contain items"
fourth' xs = head (tail (tail (tail xs)))

fourth'' :: [a] -> a
fourth'' [] = error "List must contain items"
fourth'' (_: _:_:a:_) = a

-- Exercise 3

safetail :: [a] -> [a]
safetail xs = if null xs then []
       else if length xs < 2 then []
       else tail xs

safetail' :: [a] -> [a]
safetail' xs | null xs = []
             | length xs < 2 = []
             | otherwise = tail xs

safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' [a] = []
safetail'' (a:as) = as

-- Exercise 4

halve :: [a] -> ([a],[a])
halve xs | odd (length xs) = error "List must be even-length"
         | otherwise = ((take len xs),(drop len xs))
             where len = (length xs) `div` 2

-- Exercise 5

encrypt :: Int -> String -> (String , String -> String)
encrypt add str = (enc add str, enc (- add))
       where enc a = map (toEnum . (a +) . fromEnum)

testEncrypt :: String
testEncrypt = let (cipher,decrypt) = encrypt 5 "Banana"
       in decrypt cipher

-- Exercise 6
-- REDO: This approach is absolutely stupid and does not work in the slightest
meetsOffer :: String -> Int -> Bool
meetsOffer grades tarrif = foldr (+) 0 (map ((8+) . (8*) . (64 `subtract`) . fromEnum) (reverse grades)) >= tarrif