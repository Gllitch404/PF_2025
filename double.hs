main :: IO ()
main = do
    -- lê todos os números da entrada
    input <- getContents
    let nums = map read (lines input) :: [Int]
        x = head nums
        z = head (dropWhile (<= x) (tail nums)) -- pega o primeiro Z > X
        resultado = solve x z
    print resultado

-- função que calcula quantos números são necessários
solve :: Int -> Int -> Int
solve x z = length (takeWhile (<= z) (scanl1 (+) [x..])) + 1