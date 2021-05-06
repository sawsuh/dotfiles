import System.Environment
import Text.Read

data Conf = Conf { code :: String, na :: Int, nq :: Int }

maintext = do
    title <- (++) . (++" Assignment ") <$> code <*> fmap show na
    qList <- foldr1 (++) . map (qgen . show) . flip take [1..] <$> nq
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

main = do
    c:xs <- getArgs
    case map readMaybe xs of
        [Just a, Just q] -> putStr . maintext $ Conf c a q
        _ -> putStrLn "Error reading question and/or assignment number"
