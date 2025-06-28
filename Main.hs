import Data.List

-- find last element of a list

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast [x] = Just x
myLast (x:xs) = myLast xs

-- find penultimate element of list

myButLast :: [a] -> Maybe a
myButLast [x] = Nothing
myButLast [x, _ ] = Just x
myButLast (x:xs) = myButLast xs

-- find element of list at given position

elementAt :: [a] -> Int -> Maybe a
elementAt [] _ = Nothing
elementAt (y:ys) n
          | n < 1 = Nothing
          | n == 1 = Just y
          | otherwise = elementAt ys (n - 1)

-- length of a list
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

-- reverse a list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

-- list is palindrome
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

-- flatten nested lists
data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem x) = [x]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

-- eliminate consecutive duplicates of list elements

compress :: Eq a => [a] -> [a]
compress = map head . group
