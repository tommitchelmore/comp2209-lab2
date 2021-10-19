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
