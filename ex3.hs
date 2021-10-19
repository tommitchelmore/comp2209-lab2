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
