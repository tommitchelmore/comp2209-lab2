-- Exercise 5

encrypt :: Int -> String -> (String , String -> String)
encrypt add str = (enc add str, enc (- add))
       where enc a = map (toEnum . (a +) . fromEnum)

testEncrypt :: String
testEncrypt = let (cipher,decrypt) = encrypt 5 "Banana"
       in decrypt cipher
