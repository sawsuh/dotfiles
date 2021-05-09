import Text.Parsec
import Control.Monad
import System.Environment

data Expr = Sub Expr Expr | Div Expr Expr | Times Expr Expr | Add Expr Expr | Valc Complex
data Complex = Complex Double Double
instance Num Complex where
    (+) (Complex a1 b1) (Complex a2 b2) = Complex (a1+a2) (b1+b2)
    (*) (Complex a1 b1) (Complex a2 b2) = Complex ((a1*a2)-(b1*b2)) ((a1*b2)+(a2*b1))
    fromInteger x = Complex (fromInteger x) 0
    negate (Complex a b) = Complex (negate a) (negate b)
instance Fractional Complex where
    (/) (Complex a1 b1) (Complex a2 b2) = Complex ((a1*a2 + b1*b2)/(a2*a2 + b2*b2)) ((a2*b1 - a1*b2)/(a2*a2 + b2*b2))
    fromRational x = Complex (fromRational x) 0
instance Show Complex where
    show (Complex a 0) = show a
    show (Complex 0 b) = show b ++ "i"
    show (Complex a b) = show a ++ " + " ++ show b ++ "i"
instance Show Expr where
    show (Sub ex1 ex2) = "("++show ex1 ++ " - " ++ show ex2++")"
    show (Add ex1 ex2) = "("++show ex1 ++ " + " ++ show ex2++")"
    show (Times ex1 ex2) = "("++show ex1 ++ " * " ++ show ex2++")"
    show (Div ex1 ex2) = "("++show ex1 ++ " / " ++ show ex2++")"
    show (Valc x) = "(" ++ show x ++ ")"
eval (Add ex1 ex2) = eval ex1 + eval ex2
eval (Valc x) = x
eval (Times ex1 ex2) = (eval ex1) * (eval ex2)
eval (Div ex1 ex2) = (eval ex1) / (eval ex2)
eval (Sub ex1 ex2) = (eval ex1) - (eval ex2)

exprParser = chainl1 sumitem $ sumParse <|> subParse

sumParse = Add <$ char '+'
subParse = Sub <$ char '-'
sumitem = chainl1 item $ multParse <|> divParse

multParse = Times <$ char '*'
divParse = Div <$ char '/'
item = brackExpr <|> try (Valc <$> parseNum)

parseNum = try parseIm <|> try parseReal

parseIm = try im <|> try pmI
parseReal = liftM2 (*) parseNeg $ flip Complex 0 <$> num

im = liftM2 (*) parseNeg $ Complex 0 <$> num <* char 'i'
pmI = liftM2 (*) parseNeg $ Complex 0 1 <$ char 'i'
num = read <$> many1 digit

parseNeg = (-1) <$ char '-' <|> pure 1

brackExpr = string "(" *> exprParser <* string ")"

main = do
    input <- parse exprParser "" . filter (/=' ') <$> getLine
    case input of
        Left err -> print err
        Right out -> print $ eval out
    main
