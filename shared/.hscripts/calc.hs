import System.IO
import Text.Parsec
import Control.Monad
import System.Environment

data Expr = Neg Expr | Sub Expr Expr | Div Expr Expr | Times Expr Expr | Add Expr Expr | Valc Complex
data Complex = Complex Double Double
instance Show Complex where
    show (Complex a 0) = show a
    show (Complex 0 b) = show b ++ "i"
    show (Complex a b) = show a ++ " + " ++ show b ++ "i"

add (Complex a1 b1) (Complex a2 b2) = Complex (a1+a2) (b1+b2)
times (Complex a1 b1) (Complex a2 b2) = Complex ((a1*a2)-(b1*b2)) ((a1*b2)+(a2*b1))
neg (Complex a b) = Complex (negate a) (negate b)
divi (Complex a1 b1) (Complex a2 b2) = Complex ((a1*a2 + b1*b2)/(a2*a2 + b2*b2)) ((a2*b1 - a1*b2)/(a2*a2 + b2*b2))

eval (Add ex1 ex2) = eval ex1 `add` eval ex2
eval (Valc x) = x
eval (Times ex1 ex2) = (eval ex1) `times` (eval ex2)
eval (Div ex1 ex2) = (eval ex1) `divi` (eval ex2)
eval (Sub ex1 ex2) = (eval ex1) `add` (neg (eval ex2))
eval (Neg ex1) = neg (eval ex1)

exprParser = chainl1 sumitem $ sumParse <|> subParse
sumParse = Add <$ char '+'
subParse = Sub <$ char '-'
sumitem = try negParse <|> (chainl1 item . option (Times) $ multParse <|> divParse)
negParse = char '-' *> fmap Neg sumitem
multParse = Times <$ char '*'
divParse = Div <$ char '/'
item = brackExpr <|> (fmap Valc $ try parseFloat <|> try parseNumer <|> try parseI)
parseNumer = (flip Complex 0 . read) <$> many1 digit
parseI = Complex 0 1 <$ char 'i'
parseFloat = fmap (flip Complex 0 . read) $ try floatNoLeft <|> try floatLeft
floatNoLeft = (++) <$> ("0." <$ char '.') <*> many1 digit
floatLeft = (++) <$> ((++) <$> many1 digit <*> string ".") <*> (many1 digit)
brackExpr = string "(" *> exprParser <* string ")"

main = do
    input <- parse exprParser "" . filter (/=' ') <$> (putStr "> " >> hFlush stdout >> getLine)
    case input of
        Left err -> print err
        Right out -> do
            print $ eval out
    main
