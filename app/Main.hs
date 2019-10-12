{-# LANGUAGE MultiWayIf #-}
module Main where

import Lib


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

main :: IO ()
main = putStrLn (analyzeGold 1000)   
