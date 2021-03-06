import System.Environment
import Text.Read
import System.Directory

data Conf = Conf { code :: String, na :: Int, nq :: Int }

maintext = do
    title <- (++) . (++" Assignment ") <$> code <*> show . na
    qList <- foldr1 (++) . map (qgen . show) . (`take` [1..]) <$> nq
    return $ "\\documentclass{article}\n\
        \\\title{" ++ title ++"}\n\
        \\\author{U6104703}\n\
        \\\date{}\n\
        \\\usepackage[]{amssymb} \n\
        \\\usepackage[]{mathtools} \n\
        \\\usepackage[]{enumerate} \n\
        \\\newcommand{\\norm}[1]{\\left\\lVert#1\\right\\rVert}\n\
        \\\newcommand{\\ceil}[1]{\\left\\lceil#1\\right\\rceil}\n\
        \\\begin{document}\n\
        \\\maketitle\n" ++ qList ++ "\n\\end{document}\n"
    where qgen m = "\n\
          \\\vspace{.3cm}\n\
          \\\textbf{Question " ++ m ++ "} \\\\ \n\
          \\\vspace{.3cm}\n\
          \\n\
          \% question " ++ m ++ "\n"

getFolder home = (++) . (++) (home ++ "/school/assignments/") . (++"ass") . drop 4 <$> code <*> show . na

main = do
    c:xs <- getArgs
    case map readMaybe xs of
        [Just a, Just q] -> do
            let inp = Conf c a q
            f <- (`getFolder` inp) <$> getHomeDirectory 
            createDirectory f
            writeFile (f++"/ass.tex") $ maintext inp
        _ -> putStrLn "Error reading question and/or assignment number"
