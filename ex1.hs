-- Exercise 1

myLast :: [a] -> a
myLast [] = error "List must contain items"
myLast [x] = x
myLast (x:xs) = myLast xs
