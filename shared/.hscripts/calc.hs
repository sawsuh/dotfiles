import Text.Parsec
import Control.Monad
import System.Environment

data Expr = Sub Expr Expr | Div Expr Expr | Times Expr Expr | Add Expr Expr | Val Double
eval (Add ex1 ex2) = eval ex1 + eval ex2
eval (Val x) = x
eval (Times ex1 ex2) = (eval ex1) * (eval ex2)
eval (Div ex1 ex2) = (eval ex1) / (eval ex2)
eval (Sub ex1 ex2) = (eval ex1) - (eval ex2)

exprParser :: Parsec String () Expr
exprParser = chainl1 sumitem (sumParse <|> subParse)
sumParse = Add <$ char '+'
subParse = Sub <$ char '-'
sumitem = chainl1 item (multParse <|> divParse <|> return Times)
multParse = Times <$ char '*'
divParse = Div <$ char '/'
item = brackExpr <|> (Val . read <$> many1 digit)
brackExpr = string "(" *> exprParser <* string ")"

main = do
    input <- parse exprParser "" . filter (/=' ') <$> getLine
    case input of
        Left err -> print err
        Right out -> print $ eval out
    main
