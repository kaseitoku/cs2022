module TemplateAlgo where

main :: IO ()
main = interact proc

proc :: String -> String
proc input = case map (map readInt . words) (lines input) of
    _ -> undefined

readInt :: String -> Int
readInt = read