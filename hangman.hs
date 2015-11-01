import System.IO

sgetLine :: IO String
sgetLine = do x <- getCh
              if x == '\n' then
                 do putChar x
                    return []
              else
                 do putChar '*'
                    xs <- sgetLine
                    return (x:xs)

getCh :: IO Char
getCh = do hSetEcho stdin False
           x <- getChar
           hSetEcho stdin True
           return x

guess :: String -> IO ()
guess guessWord =
  do putStr "Try to guess: "
     tryWord <- getLine
     if tryWord == guessWord then
       do putStrLn "You win!!!"
     else
       do putStrLn (diff guessWord tryWord)
          guess guessWord

diff :: String -> String -> String
diff xs ys = [ if x `elem` ys then x else '_'| x <- xs ]

main :: IO ()
main =
  do putStr "Enter a secret word: "
     word <- sgetLine
     guess word
