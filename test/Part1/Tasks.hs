module Part1.Tasks where

import Util(notImplementedYet)

myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl f e []    = e
myFoldl f e (h:t) = myFoldl f (f e h) t

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr = notImplementedYet

myMap :: (a -> b) -> [a] -> [b]
myMap f = myFoldr ((:) . f) []

myConcatMap :: (a -> [b]) -> [a] -> [b]
myConcatMap f = myFoldr ((++) . f) []

myConcat :: [[a]] -> [a]
myConcat = myFoldl (++) []

myReverse :: [a] -> [a]
myReverse = myFoldl (flip (:)) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p = myFoldl f []
    where f lst e = if p e then e:lst else lst

myPartition :: (a -> Bool) -> [a] -> ([a], [a])
myPartition p = myFoldr f ([], [])
    where f e (yes, no) = if p e then (e:yes, no) else (yes, e:no)

