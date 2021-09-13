module Part1.Tasks where

import Util(notImplementedYet)
import Data.Fixed(mod')

-- синус числа (формула Тейлора)
mySin :: Double -> Double
mySin = notImplementedYet

-- косинус числа (формула Тейлора)
myCos :: Double -> Double
myCos = notImplementedYet

-- наибольший общий делитель двух чисел
myGCD :: Integer -> Integer -> Integer
myGCD = notImplementedYet

-- является ли дата корректной с учётом количества дней в месяце и
-- вискокосных годов?
isDateCorrect :: Integer -> Integer -> Integer -> Bool
isDateCorrect day month year = notImplementedYet

-- возведение числа в степень, duh
-- готовые функции и плавающую арифметику использовать нельзя
myPow :: Integer -> Integer -> Integer
myPow x 0 = 1
myPow x y | odd y = x * myPow x (y - 1)
myPow x y = z * z where z = myPow x (y `div` 2)

-- является ли данное число простым?
isPrime :: Integer -> Bool
isPrime x = null [ y | y <- [2..(x `div` 2)], x `mod` y == 0 ]

type Point2D = (Double, Double)

-- рассчитайте площадь многоугольника по формуле Гаусса
-- многоугольник задан списком координат
shapeArea :: [Point2D] -> Double
--shapeArea points = notImplementedYet
shapeArea points = let window = zip3 points t tt
                       t = tail points ++ [head points]
                       tt = tail t ++ [head t]
                   in
    abs $ sum [ y * (prevX - nextX) | ((prevX, _), (_, y), (nextX, _)) <- window ] / 2

-- треугольник задан своими координатами.
-- функция должна вернуть
--  0, если он тупоугольный
--  1, если он остроугольный
--  2, если он прямоугольный
--  -1, если это не треугольник
triangleKind :: Point2D -> Point2D -> Point2D -> Integer
triangleKind a b c = notImplementedYet
