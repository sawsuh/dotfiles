import qualified Data.Text as T
import System.Environment
import Text.Read
import System.Directory
import Control.Monad

data Conf = Conf { code :: String, 
    na :: Int, 
    nq :: Int, 
    templ :: T.Text }
container = fst . T.break (=='!') . templ
qskele = T.drop 1 . snd . T.break (=='!') . templ
title = (.) T.pack $ (++) <$> (++" Assignment ") . code <*> show . na
qgen n = T.replace (T.pack "@") n . qskele
qList = T.concat . join (mapM (qgen . T.pack . show) . flip take [1..] . nq)
maintext = T.replace (T.pack "$") . qList <*> (T.replace (T.pack "@") . title <*> container)
getFolder h = (++) <$> (++"ass") . (++) (h++"/school/assignments/") . drop 4 . code <*> show . na
    
main = do
    course_code:args <- getArgs
    home_dir <- getHomeDirectory
    let template_loc = home_dir ++ "/.hscripts/templates/ass.tex"
    template <- T.pack <$> readFile template_loc
    putStrLn $ "read template from "++template_loc
    case map readMaybe args of 
        [Just assign_num, Just q_count] -> do
            let config = Conf course_code assign_num q_count template
                output_folder = getFolder home_dir config
                output_file = output_folder++"/ass.tex"
                output_text = T.unpack $ maintext config
            createDirectory output_folder
            putStrLn $ "made dir "++output_folder
            writeFile output_file output_text
            putStrLn $ "wrote "++output_file
            putStr output_text
        _ -> putStrLn "No parse"
