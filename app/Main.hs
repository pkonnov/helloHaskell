{-# LANGUAGE MultiWayIf #-}
module Main where

import Lib
import MainList

checkLocalhost :: String -> String
checkLocalhost ip =
  if ip == "127.0.0.1" || ip == "0.0.0.0"
    then "it is a localhost"
    else "no, it is not a localhost"

analyzeGold :: Int -> String
{-analyzeGold standart = 
  if standart == 999
    then ......
    else if standart == 750
      then .....
-}
{-
analyzeGold standart = 
  if | standart == 999 -> "wow, 999 standart"
     | standart == 750 -> "great 750 standart"
     | standart == 585 -> "not bad, 585 standart"
     | otherwise -> "i don`t know such a standart..."
-}

analyzeGold standart = 
  case standart of
    999 -> "wow...."
    750 -> "great...."
    585 -> "not bad...."
    _   -> "....." 

calculateTime :: Int -> Int
calculateTime timeInS = 
  {-let threshold = 40
      correction = 120
      delta = 8-}
  let threshold = 40; correction = 120; delta = 8;
  in
  if | timeInS < threshold -> timeInS + correction
     | otherwise -> timeInS + delta + correction

calculateTimeTwo :: Int -> Int
calculateTimeTwo timeInS = 
  if | timeInS < threshold -> timeInS + correction
     | otherwise -> timeInS +
                    delta + 
                    correction
  where
    threshold = 40
    correction = 120
    delta = 8

{-isEqualTo :: Int -> Int -> Bool
isEqualTo x y = x == y
  if code1 `isEqualTo` code2 then "aa" else "2"
  where code1 = 1002
        code2 = 2323-}

main :: IO ()
{-main = print ("123.34.56.76" `addTo` hosts)   
  where hosts = ["12.232.23.34", "127.0.0.12"]-}
main = print (stepToList [1, 3, 29])

{- http://hackage.haskell.org/package/base-4.12.0.0/docs/src/System.IO.html#print-}
