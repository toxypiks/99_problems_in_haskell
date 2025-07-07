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

flatten nested lists

a data structure is needed since lists in haskell are homogeneous

a NestedList can either be one Elem a or a List of NestedList a, which makes it a recursive data type.

the recursion will stop when the List is empty, when theres only one Elem x in the list, it will only return a List with x as one element.

When the List is nested, it takes the List of NestedList items and uses the ++ operator to concatenate each element of the nested List to one top level list:

flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])

[1,2,3,4,5]
