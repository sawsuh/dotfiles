import System.IO
import Numeric
import Text.Parsec
import Control.Monad
import System.Environment

data Expr = Neg Expr | 
            Sub Expr Expr | 
            Div Expr Expr | 
            Times Expr Expr | 
            Add Expr Expr | 
            Valc Complex | 
            Exp Expr Expr
data Complex = Complex Double Double
instance Show Complex where
    show (Complex a 0) = showFFloat Nothing a ""
    show (Complex 0 b) = (showFFloat Nothing b "") ++ "i"
    show (Complex a b) 
        | b < 0 = showfloat a ++ " - " ++ showfloat (negate b) ++ "i"
        | otherwise = showfloat a ++ " + " ++ showfloat b ++ "i"
        where showfloat = flip (showFFloat Nothing) ""
indent = unlines . map ("    "++) . lines
instance Show Expr where
    show (Neg x) = indent $ "-\n" ++ (show x)
    show (Sub x y) = indent $ (show x) ++ "-\n" ++ (show y)
    show (Div x y) = indent $ (show x) ++ "/\n" ++ (show y)
    show (Times x y) = indent $ (show x) ++ "*\n" ++ (show y)
    show (Add x y) = indent $ (show x) ++ "+\n" ++ (show y)
    show (Valc x) = show x ++ "\n"
    show (Exp x y) = indent $ (show x) ++ "^\n" ++ (show y)

add (Complex a1 b1) (Complex a2 b2) = Complex (a1+a2) (b1+b2)
times (Complex a1 b1) (Complex a2 b2) = Complex ((a1*a2)-(b1*b2)) ((a1*b2)+(a2*b1))
neg (Complex a b) = Complex (negate a) (negate b)
divi (Complex a1 b1) (Complex a2 b2) = Complex ((a1*a2 + b1*b2)/denom) ((a2*b1 - a1*b2)/denom)
    where denom = a2*a2 + b2*b2
expo (Complex a b) (Complex c d) = Complex (modulus*(cos arg)) (modulus*(sin arg))
    where phi = atan2 b a
          modulus = exp $ ((c/2)*(log (a^2 + b^2)) - (d*phi))
          arg = (d/2)*(log (a^2+b^2)) + (c*phi)

eval (Add ex1 ex2) = eval ex1 `add` eval ex2
eval (Valc x) = x
eval (Times ex1 ex2) = (eval ex1) `times` (eval ex2)
eval (Div ex1 ex2) = (eval ex1) `divi` (eval ex2)
eval (Sub ex1 ex2) = (eval ex1) `add` (neg (eval ex2))
eval (Neg ex1) = neg (eval ex1)
eval (Exp ex1 ex2) = (eval ex1) `expo` (eval ex2)

exprParser = chainl1 term $ sumParse <|> subParse
sumParse = Add <$ char '+'
subParse = Sub <$ char '-'

term = try negParse <|> (chainl1 factor . option Times $ multParse <|> divParse)
negParse = char '-' *> fmap Neg term
multParse = Times <$ char '*'
divParse = Div <$ char '/'

factor = chainl1 item $ Exp <$ char '^'
item = brackExpr <|> (fmap Valc $ try parseFloat <|> try parseNumer <|> try parseI)

brackExpr = string "(" *> exprParser <* string ")"
parseNumer = flip Complex 0 . read <$> many1 digit
parseI = Complex 0 1 <$ char 'i'
parseFloat = fmap (flip Complex 0 . read) $ try floatNoLeft <|> try floatLeft

floatNoLeft = liftM2 (++) ("0." <$ char '.') $ many1 digit
floatLeft = liftM2 (++) (liftM2 (++) (many1 digit) $ string ".") $ many1 digit


main = do
    input <- parse exprParser "" . filter (/=' ') <$> do 
        putStr "> "
        hFlush stdout
        getLine
    case input of
        Left err -> print err
        Right out -> do
            print $ eval out
            putStrLn $ show out ++ "\n"
    main
