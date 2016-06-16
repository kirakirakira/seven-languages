module Main where
    reverseList :: [Integer] -> [Integer]
    reverseList [] = []
    reverseList (h:t) = reverseList t ++ [h]