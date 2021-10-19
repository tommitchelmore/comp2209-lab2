
# Exercise Sheet Two: Defining Functions

The aim of this tutorial is for you to gain an understanding of defining functions in Haskell. Included in this is the use of polymorphic functions and overloaded functions by way of type classes. By the end of the tutorial you should also be able to define functions using both guarded equations and pattern matching.

Attempt the exercsise in your own time before Friday's lab. Use those sessions for asking questions related to the exercises and obtaining feedback on your work.

**There are no assessed exercises on this sheet**

## Exercise One

The library function  last  selects the last element of a non-empty list; for example  last [1,2,3,4,5] = 5. Show how the function  last  could be defined in terms of the other library functions given in the lecture in at least two distinct ways.

## Exercise Two

Define a function  fourth :: [a] -> a  that returns the fourth element in a list that contains at least this many elements. Do this using the following three techniques:

-   head  and  tail
-   list indexing  !!
-   pattern matching

What happens in cases where there are fewer than four elements in the list?

## Exercise Three

Consider a function  safetail :: [a] -> [a]  that behaves in the same way as  tail  except that rather than produing an error it returns the empty list in cases where no tail exists. Using  tail  and  null :: [a] -> Bool  that decides whether a list is empty or not, define  safetail  using

-   if-then-else
-   guarded equations
-   pattern matching

For your solutions, which approach produced the most concise code?

## Exercise Four

Use library functions that work with List types to define a function  halve :: [a] -> ([a],[a])  that splits an even length list in to two halves. For example

> halve [1,2,3,4,5,6]
([1,2,3],[4,5,6]) 

Can you define this function directly using pattern matching on Lists?

## Exercise Five

Write a function  enc :: Int -> String -> String  that encrypts a String by adding some given integer to each character's Unicode value. Now, using  enc  as a locally declared function write a function  encrypt :: Int -> String -> (String , String -> String)  that accepts a String and an Int and  **returns a pair**  of an encrypted string and a function with which to decrypt the string.

Note that functions are not an instance of the  Show  class so you cannot "print" the output from  encrypt  in ghci. You can however use e.g.  let (cipher,decrypt) = encrypt 5 "Banana"  and then apply  decrypt  to  cipher  to check it works.

## Exercise Six

Define a function  meetsOffer :: String -> Int -> Bool  that computes the UCAS tariff and then decides whether a specific points offer has been met by the given A level grades. For example  meetsOffer "ABC" 150 = False  as the tariff value for ABC is 48+40+32 = 120. In the new tariff system, each A level grade is worth from 16 points (grade E) in increments of 8 to 56 points (grade A*).

Consider what the function should return in case the input string is not a series of A level grades.

## Exercise Seven

The Luhn algorithm is used to check bank card numbers for simple errors such as mistyping a digit. It proceeds as follows:

-   Consider each digit as a separate number
-   Moving left, double every other number from the second last
-   Subtract 9 from each number that is now greater than 9
-   Add all of the resulting numbers together
-   If the total is divisible by 10 then card number is valid

Define a function luhnDouble :: Int -> Int that doubles a digit and subtracts 9 if the result is greater than 9. Using luhnDouble and the function mod to define a function luhn :: Int -> Int -> Int -> Int > Bool that decides whether a four digit card number is is valid. For example
```
> luhn 1 7 8 4
True
> luhn 4 7 8 3
False
```
