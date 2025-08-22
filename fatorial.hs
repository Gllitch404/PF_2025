import GHC.Base (VecElem(Int16ElemRep))
fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial 1 = 1
fatorial n = n * fatorial(n-1)
main :: IO ()
main = do
    putStrLn "Digite um nro: "
    nro <- getLine
    let n = read nro :: Integer
    print(fatorial n)
