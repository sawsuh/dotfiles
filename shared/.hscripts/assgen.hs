import Data.List
import System.Environment
import Text.Read
import System.Directory
import Control.Monad

data Conf = Conf { code :: String, na :: Int, nq :: Int, pret :: String, postt :: String, preqs :: String, midqs :: String, postqs :: String, end :: String }

maintext = do
    preamble <- pgen
    qList <- qlistgen
    e <- end
    return $ preamble ++ qList ++ e
pgen = do
    t <- title
    pre <- pret
    post <- postt
    return $ pre ++ t ++ post
title = do
    course <- code
    assignment <- na
    return $ course ++ " Assignment " ++ show assignment
qlistgen = do
    n <- nq
    foldr (++) "" . mapM (qgen . show) [1..n]
qgen m = do 
    pre <- preqs
    mid <- midqs
    post <- postqs
    return $ pre ++ m ++ mid ++ m ++ post
getFolder home = do
    c <- drop 4 . code
    s <- show . na
    return $ home ++ "/school/assignments/" ++ c++"ass"++s

splitter f = foldr condAppend [[]]
    where condAppend x (a:acc) 
            | f x = []:a:acc
            | otherwise = (x:a):acc

main = do
    c:xs <- getArgs
    f <- getHomeDirectory
    datas <- readFile $ f++"/.hscripts/templates/ass.tex"
    case splitter (=='@') datas of 
        [pretitle, posttitle, preq, midq, postq, end] -> do
            case map readMaybe xs of 
                [Just a, Just q] -> do
                    let inp = Conf c a q pretitle posttitle preq midq postq end
                        fo = getFolder f inp
                    createDirectory fo
                    writeFile (fo++"/ass.tex") $ maintext inp
        _ -> putStrLn "No parse"
