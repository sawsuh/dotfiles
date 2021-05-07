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
    ass_title <- title
    pre_title <- pret
    post_title <- postt
    return $ pre_title ++ ass_title ++ post_title
title = do
    course_code <- code
    assignment_num <- show . na
    return $ course_code ++ " Assignment " ++ assignment_num
qlistgen = do
    num_of_qs <- nq
    foldr (++) "" . mapM (qgen . show) [1..num_of_qs]
qgen m = do 
    pre_question <- preqs
    mid_question <- midqs
    post_question <- postqs
    return $ pre_question ++ m ++ mid_question ++ m ++ post_question
getFolder home = do
    course_digits <- drop 4 . code
    assign_num <- show . na
    return $ home ++ "/school/assignments/" ++ course_digits++"ass"++assign_num

splitter f = foldr condAppend [[]]
    where condAppend x (a:acc) 
            | f x = []:a:acc
            | otherwise = (x:a):acc

main = do
    c:xs <- getArgs
    home_dir <- getHomeDirectory
    datas <- readFile $ home_dir++"/.hscripts/templates/ass.tex"
    putStrLn $ "read template from "++home_dir++"/.hscripts/templates/ass.tex"
    case splitter (=='@') datas of 
        [pretitle, posttitle, preq, midq, postq, end] -> case map readMaybe xs of 
            [Just a, Just q] -> do
                let input = Conf c a q pretitle posttitle preq midq postq end
                    assignment_dir = getFolder home_dir input
                createDirectory assignment_dir
                putStrLn $ "made dir "++ assignment_dir
                writeFile (assignment_dir++"/ass.tex") $ maintext input
                putStrLn $ "wrote "++assignment_dir++"/ass.tex"
            _ -> putStrLn "no assignment number/question number parse"
        _ -> putStrLn "No template parse"
