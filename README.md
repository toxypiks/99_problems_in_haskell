### 99 Problems in Haskell

[HaskellWiki] (https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems)

myButLast' = last . init

- init returns a list without its last item while the output list gets applied to the last function

myButLast'' x = reverse x !! 1

- reverses list and takes value at index 1

myLength with accumulator

myLength :: [a] -> Int
myLength list = myLength_acc list 0
    where
        myLength_acc [] n = n
        myLength_acc (_:xs) n = myLength_acc xs (n + 1)
