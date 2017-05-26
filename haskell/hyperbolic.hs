module Hyperbolic (sinh, cosh, tanh, coth) where
import Prelude hiding (sinh, cosh, tanh, coth)

fac :: Integer -> Integer
fac n = product [1..n]

e :: (Fractional a) => a
e = (+) 1 $ foldr1 (+) $ map (\x -> 1 / fromIntegral (fac x)) [1..20]

sinh :: (Floating a) => a -> a
sinh u = (e**u - e**(-u))/2

cosh :: (Floating a) => a -> a
cosh u = (e**u + e**(-u))/2

tanh :: (Floating a) => a -> a
tanh u = sinh u / cosh u

coth :: (Floating a) => a -> a
coth u = cosh u / sinh u
