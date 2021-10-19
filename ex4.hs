-- Exercise 4

halve :: [a] -> ([a],[a])
halve xs | odd (length xs) = error "List must be even-length"
         | otherwise = ((take len xs),(drop len xs))
             where len = (length xs) `div` 2
