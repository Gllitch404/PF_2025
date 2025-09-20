
inicioLista :: [a] ->  Maybe a
inicioLista [] = Nothing
inicioLista (x:xs) = Just x

segundoElemento :: [a] -> Maybe a
segundoElemento [] = Nothing
segundoElemento (x:xs) = inicioLista xs

soUm :: [a] -> Bool
soUm [_] = True
soUm _   = False







