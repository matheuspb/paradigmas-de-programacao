-- uma PA com a1 = 5, e razao = 2
r = 2
a 1 = 5
a n = a 1 + (n-1) * r

-- Soma usando listas
soma_l n = sum [a x | x <- [1..n]]

-- Soma usando a forma geral
soma_g n = n * (a 1 + a n) / 2

-- Produto usando listas
prod_l n = product [a x | x <- [1..n]]

-- Produto usando a forma geral
prod_g n = r ** n * (gamma (a 1 / r + n) / gamma (a 1 / r)) where
	gamma :: Double -> Double
	gamma n = sqrt(2*pi/n) * ((((1/exp 1) * (n + (1/(12*n - 1/(10*n)))))) ** n)
