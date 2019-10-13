module MainList (headEditCode, addTo, stepToList) where

import Data.List

headEditCode :: IO ()
headEditCode = print (head ["vscode", "atom", "pycharm"])

addTo :: String -> [String] -> [String]
addTo newHost hosts = newHost : hosts

stepToList :: [Int] -> [Int]
stepToList [a,b,c] = [a, b..c]
