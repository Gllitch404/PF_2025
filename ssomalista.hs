somalista :: Num a => [a] -> a
somalista [] = 0
somalista (x:xs) = x + somalista xs 

multfirst :: Num a => [a] -> a
multfirst [] = 1
multfirst (y:ys) = y * somalista ys

 