-- Exercise 6
-- REDO: This approach is absolutely stupid and does not work in the slightest

meetsOffer :: String -> Int -> Bool
meetsOffer grades tarrif = foldr (+) 0 (map ((8+) . (8*) . (64 `subtract`) . fromEnum) (reverse grades)) >= tarrif