import System.IO
import Numeric
import Text.Parsec
import Control.Monad
import System.Environment
import Data.Complex

data Expr = Neg Expr | 
            Sub Expr Expr | 
            Div Expr Expr | 
            Times Expr Expr | 
            Add Expr Expr | 
            Valc (Complex Double) | 
            Exp Expr Expr
indent = unlines . map ("    "++) . lines
instance Show Expr where
    show (Neg x) = "-\n" ++ (show x)
    show (Sub x y) = indent $ (show x) ++ "-\n" ++ (show y)
    show (Div x y) = indent $ (show x) ++ "/\n" ++ (show y)
    show (Times x y) = indent $ (show x) ++ "*\n" ++ (show y)
    show (Add x y) = indent $ (show x) ++ "+\n" ++ (show y)
    show (Valc x) = show' x ++ "\n"
    show (Exp x y) = indent $ (show x) ++ "^\n" ++ (show y)
showf = flip (showFFloat Nothing) ""
show' (0:+b) = (showf b) ++ "i"
show' (a:+0) = (showf a)
show' (a:+b)
    | b < 0 = (showf a) ++ " - " ++ (showf $ negate b) ++ "i"
    | otherwise = (showf a) ++ " + " ++ (showf b)++"i"

eval (Add ex1 ex2) = eval ex1 + eval ex2
eval (Valc x) = x
eval (Times ex1 ex2) = (eval ex1) * (eval ex2)
eval (Div ex1 ex2) = (eval ex1) / (eval ex2)
eval (Sub ex1 ex2) = (eval ex1) - (eval ex2)
eval (Neg ex1) = negate (eval ex1)
eval (Exp ex1 ex2) = (eval ex1) ** (eval ex2)

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
parseNumer = (:+0) . read <$> many1 digit
parseI = (0:+1) <$ char 'i'
parseFloat = fmap ((:+0) . read) $ try floatNoLeft <|> try floatLeft

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
            putStrLn . show' $ eval out
            putStrLn $ show out ++ "\n"
    main
