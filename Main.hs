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
