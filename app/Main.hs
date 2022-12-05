module Main where

showInt :: Int -> String
showInt = show

readInt :: String -> Int
readInt = read

main :: IO ()
-- main = interact func
main = interact (drive func2)

drive :: ([String] -> [String]) -> (String -> String)
drive f = unlines . f . lines

func :: String -> String
func input = case map (map readInt . words) (lines input) of
    _ -> unlines []

func2 :: [String] -> [String]
func2 inputs = case map words inputs of
    _ -> map unwords [] 
