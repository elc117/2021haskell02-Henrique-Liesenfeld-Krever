-- Prática 02 de Haskell
-- Nome: Henrique Liesenfeld Krever

--auxiliar
temp :: Float -> Bool
temp x = x>37.8

--função comFebre questão 1
comFebre :: [Float] -> [Float]
comFebre x = filter temp x

--Questão 2 comFebre'
comFebre' :: [Float] -> [Float]
comFebre' x = filter (\x -> x>37.8) x

--Questão 3 itemize fazer o nome estranho
itemize :: [String] -> [String]
itemize x = map (\x -> "<li>"++x++"</ li>") x

--Questão 4 big circles calcular area de varios circulo
bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter (\y -> pi*y^2>x) y

--Questão 5 quarentena temperatura dos coronado
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena nome = filter (\(_,temp) -> temp>37.8) nome

--Questão 6 idade aproximada das pessoas
idadesEm :: [Int] -> Int -> [Int]
idadesEm x y = map (\sub -> y - sub) x

--Questão 7 superherois
changeNames :: [String] -> [String]
changeNames nomes = map (\x -> if head x=='A' then "Super " ++ x else x) nomes

--Questão 8 tamanho menor que 5
onlyShorts :: [String] -> [String]
onlyShorts nomes = filter (\x -> length x < 5) nomes
