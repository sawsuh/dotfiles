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
firstNspace q = (++) (concat $ replicate q "     ") . drop (q*5)
indent p = unlines . map ((++) (concat $ replicate p "|--- ")) . lines
showHelper x p = firstNspace p $ showh x (p+2)
opHelper p op = firstNspace (p-1) . indent p $ "("++op++")"

showh (Neg x) p = (opHelper p "-") ++ (showHelper x p)
showh (Sub x y) p = (showHelper x p) ++ (opHelper p "-" )++ (showHelper y p)
showh (Div x y) p = (showHelper x p) ++ (opHelper p "/" )++ (showHelper y p)
showh (Times x y) p = (showHelper x p) ++ (opHelper p "*" )++ (showHelper y p)
showh (Add x y) p = (showHelper x p) ++ (opHelper p "+" )++ (showHelper y p)
showh (Valc x) p = firstNspace (p-1) . indent p $ show' x
showh (Exp x y) p = (showHelper x p) ++ (opHelper p "^") ++ (showHelper y p)

showf = flip (showFFloat Nothing) ""
show' (0:+b) = (showf b) ++ "i"
show' (a:+0) = (showf a)
show' (a:+b)
    | b < 0 = (showf a) ++ " - " ++ (showf $ negate b) ++ "i"
    | otherwise = (showf a) ++ " + " ++ (showf b)++"i"

instance Show Expr where
    show x = showh x 0

eval (Add ex1 ex2) = eval ex1 + eval ex2
eval (Valc x) = x
eval (Times ex1 ex2) = (eval ex1) * (eval ex2)
eval (Div ex1 ex2) = (eval ex1) / (eval ex2)
eval (Sub ex1 ex2) = (eval ex1) - (eval ex2)
eval (Neg ex1) = negate (eval ex1)
eval (Exp ex1 ex2) = (eval ex1) ** (eval ex2)

exprParser = spaces *> (chainl1 term $ sumParse <|> subParse)
sumParse = Add <$ (char '+' <* spaces)
subParse = Sub <$ (char '-' <* spaces)

term = try negParse <|> (chainl1 factor . option Times $ multParse <|> divParse)
negParse = char '-' *> spaces *> fmap Neg term
multParse = Times <$ char '*' <* spaces 
divParse = Div <$ char '/' <* spaces

factor = chainl1 item $ Exp <$ char '^' <* spaces
item = brackExpr <|> ((fmap Valc $ try parseFloat <|> try parseNumer <|> try parseI) <* spaces)

brackExpr = char '(' *> spaces *> exprParser <* spaces <* char ')' <* spaces
parseNumer = (:+0) . read <$> many1 digit
parseI = (0:+1) <$ char 'i'
parseFloat = fmap ((:+0) . read) $ try floatNoLeft <|> try floatLeft

floatNoLeft = liftM2 (++) ("0." <$ char '.') $ many1 digit
floatLeft = liftM2 (++) (liftM2 (++) (many1 digit) $ string ".") $ many1 digit

main = do
    input <- parse exprParser "" <$> do 
        putStr "> "
        hFlush stdout
        getLine
    case input of
        Left err -> print err
        Right out -> do
            putStrLn . show' $ eval out
            putStrLn $ show out ++ "\n"
    main
